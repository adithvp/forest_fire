import cv2
import datetime
import tensorflow.compat.v1 as tf
import os
import numpy as np
from ultralytics import YOLO
from DBConnection import Db
from fire2 import classify_video

# Disable tensorflow compilation warnings
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
STATIC_PATH = r"C:\Users\adith\PycharmProjects\forestfire\myapp\static\\"

# Initialize webcam
cam = cv2.VideoCapture(STATIC_PATH + "tiger-261.mp4")  # Uncomment this for a video file input
if not cam.isOpened():
    print("Error: Could not access the webcam.")
    exit()

station_id = "3"
firecount = 0
personcount = 0

processing = True

try:
    while processing:
        ret, frame = cam.read()

        if not ret:
            print("Reached end of video. Exiting...")
            break

        print("Processing frame...")

        ##### Fire detection
        stat, fire_path = classify_video(frame)
        if stat == "detected":
            if firecount == 0:
                firecount = 1
                db = Db()
                dt = datetime.datetime.now().date()
                tm = datetime.datetime.now().strftime("%H:%M")
                res = db.selectOne("SELECT * FROM `myapp_foreststation` WHERE id='" + str(station_id) + "'")
                title = "Forest fire detected."
                descr = "Forest fire was detected at " + res['name'] + " on " + str(dt) + ", " + tm + "."
                db.insert(
                    "INSERT INTO `myapp_fire_noti`(`date`, `desc`, image, title, `FORESTSTATION_id`) VALUES(CURDATE(), '" + descr + "', '" + fire_path
                    + "', '" + title + "','" + str(station_id) + "')")
                # Don't break here - continue processing for other detections

        ##### Animal detection
        temp_image_path = os.path.join(STATIC_PATH, "captured_frame.jpg")
        cv2.imwrite(temp_image_path, frame)
        image_data = tf.gfile.FastGFile(temp_image_path, 'rb').read()

        # Loads label file, strips off carriage return
        label_lines = [line.rstrip() for line in tf.gfile.GFile("logs/output_labels.txt")]

        # Unpersists graph from file
        with tf.gfile.FastGFile("logs/output_graph.pb", 'rb') as f:
            graph_def = tf.GraphDef()
            graph_def.ParseFromString(f.read())
            _ = tf.import_graph_def(graph_def, name='')

        animal_detected = False
        with tf.Session() as sess:
            # Feed the image_data as input to the graph and get first prediction
            softmax_tensor = sess.graph.get_tensor_by_name('final_result:0')

            predictions = sess.run(softmax_tensor, {'DecodeJpeg/contents:0': image_data})

            # Sort to show labels of first prediction in order of confidence
            top_k = predictions[0].argsort()[-len(predictions[0]):][::-1]

            for node_id in top_k:
                human_string = label_lines[node_id]
                score = predictions[0][node_id]
                if float(score) * 100 > 80.00:
                    print('%s detected with high confidence score of %.2f' % (human_string, score * 100))
                    animal_detected = True

                    d = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
                    animal_img_path = r"C:\Users\adith\PycharmProjects\forestfire\media\animalpic\\" + d + ".jpg"
                    cv2.imwrite(animal_img_path, frame)
                    anim_path = "/media/animalpic/" + d + ".jpg"

                    dt = datetime.datetime.now().date()
                    tm = datetime.datetime.now().strftime("%H:%M")
                    db = Db()
                    res = db.selectOne("SELECT * FROM `myapp_foreststation` WHERE id='" + str(station_id) + "'")
                    title = "Animal detected."
                    descr = human_string + " was detected at " + res['name'] + " on " + str(dt) + ", " + tm + "."
                    db.insert("INSERT INTO `myapp_alert`(title, `desc`, `date`, `FORESTSTATION_id`, image) VALUES"
                              "('" + title + "', '" + descr + "', CURDATE(), '" + str(
                        station_id) + "','" + anim_path + "')")
                    break
                else:
                    print('%s detected with low confidence score of %.2f' % (human_string, score * 100))

        ##### Human detection
        # Load YOLO model
        model = YOLO('yolov8n.pt')

        # Perform object detection
        results = model(frame, verbose=False)

        # Process results
        person_count = 0
        for result in results:
            boxes = result.boxes
            if boxes is not None:
                # Filter only person detections (class ID 0 in COCO dataset)
                for box in boxes:
                    cls = int(box.cls[0].cpu().numpy())
                    if cls == 0:  # 0 is the class ID for 'person' in COCO dataset
                        person_count += 1
                        x1, y1, x2, y2 = box.xyxy[0].cpu().numpy()
                        conf = box.conf[0].cpu().numpy()

                        cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)), (0, 255, 0), 2)
                        label = f"{model.names[int(cls)]} {conf:.2f}"
                        cv2.putText(frame, label, (int(x1), int(y1) - 10),
                                    cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

        print(f"Detected {person_count} persons")
        if person_count > 0:

            if personcount == 0:
                personcount = 1
                d = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
                human_img_path = r"C:\Users\adith\PycharmProjects\forestfire\media\animalpic\\" + d + ".jpg"
                cv2.imwrite(human_img_path, frame)
                anim_path = "/media/animalpic/" + d + ".jpg"

                dt = datetime.datetime.now().date()
                tm = datetime.datetime.now().strftime("%H:%M")
                db = Db()
                res = db.selectOne("SELECT * FROM `myapp_foreststation` WHERE id='" + str(station_id) + "'")
                title = "Person detected."
                descr = f"{person_count} person(s) was detected at {res['name']} on {str(dt)}, {tm}."
                db.insert("INSERT INTO `myapp_alert`(title, `desc`, `date`, `FORESTSTATION_id`, image) VALUES"
                          "('" + title + "', '" + descr + "', CURDATE(), '" + str(station_id) + "','" + anim_path + "')")
            # Don't break here - continue processing other frames

        # Display the frame with detections (optional)
        # cv2.imshow('Forest Monitoring', frame)

        # Wait for the 'q' key to exit the loop
        if cv2.waitKey(1) & 0xFF == ord('q'):
            processing = False

    print("Finished processing video.")

finally:
    cam.release()
    cv2.destroyAllWindows()
    print("Resources released.")