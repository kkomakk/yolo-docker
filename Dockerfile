FROM ubuntu:22.04

ENV TZ=Asia/Seoul
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y tzdata git wget build-essential pkg-config \
    libopencv-dev

WORKDIR /app

RUN git clone https://github.com/AlexeyAB/darknet . && \
    sed -i 's/GPU=1/GPU=0/g' Makefile && \
    sed -i 's/CUDNN=1/CUDNN=0/g' Makefile && \
    sed -i 's/OPENCV=0/OPENCV=1/g' Makefile && \
    make

RUN wget https://pjreddie.com/media/files/yolov3.weights

COPY detect.sh /app/detect.sh
RUN chmod +x /app/detect.sh
ENTRYPOINT ["./darknet", "detect", "cfg/coco.data", "cfg/yolov3.cfg", "yolov3.weights"]

