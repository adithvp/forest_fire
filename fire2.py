import datetime
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

from ultralytics import YOLO
import cvzone
import cv2
import math
import pygame
from DBConnection import Db
import time
db=Db()

# Initialize pygame for playing sound
def classify_video(frame):
    from pygame import mixer
    mixer.init()

    model = YOLO(r'C:\Users\adith\PycharmProjects\forestfire\fire.pt')
    # Reading the classes
    classnames = ['fire']
    frame = cv2.resize(frame, (640, 480))
    result = model(frame, stream=True)
    d = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    # print(frame,"0000000000000000000")
    cv2.imwrite(r"C:\Users\adith\PycharmProjects\forestfire\media\firepic\\" + d + ".jpg", frame)
    path = "/media/firepic/" + d + ".jpg"
    for info in result:
        boxes = info.boxes
        for box in boxes:
            confidence = box.conf[0]
            confidence = math.ceil(confidence * 100)
            Class = int(box.cls[0])
            print(confidence,"Confidence")
            if confidence >= 75:
                x1, y1, x2, y2 = box.xyxy[0]
                x1, y1, x2, y2 = int(x1), int(y1), int(x2), int(y2)
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 0, 255), 5)
                cvzone.putTextRect(frame, f'{classnames[Class]} {confidence}%', [x1 + 8, y1 + 100],
                                   scale=1.5, thickness=2)

                mixer.music.load(
                    r'C:\Users\adith\PycharmProjects\forestfire\myapp\static\alaram.wav')
                mixer.music.play()
                time.sleep(3)
                pygame.mixer.music.stop()
                return "detected", path
    return "no", ""


# classify_video(r'C:\Users\LENOVO\Downloads\ANAGHA\New backup\House_Fire_Detection\House_Fire_Detection_app\static\firevideo.mp4')