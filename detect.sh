#!/bin/bash

URL="$1"

if [ -z "$URL" ]; then
    echo "사용법: docker run easywater/yolo <이미지 URL>"
    exit 1
fi

cd /app

echo "Downloading image from: $URL"
wget -O input.jpg "$URL"

echo "Running YOLOv3 detection..."
./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights input.jpg -dont_show

