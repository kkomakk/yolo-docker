# YOLO Docker 환경 구성 및 객체 검출 과제

이 저장소는 객체 검출(Object Detection) 과제 수행을 위해  
YOLOv3 + Darknet 환경을 Docker 기반으로 구성한 프로젝트입니다.

---

## 📌 1. 프로젝트 개요
- 제공된 Darknet 프레임워크를 Docker 이미지로 빌드
- Ubuntu 22.04 기반
- OpenCV 포함
- GPU 비사용(GPU=0), CPU 전용 환경
- YOLOv3 weights(yolov3.weights)를 포함하여 컨테이너 내에서 즉시 객체 검출 가능

---

## 📌 2. Docker Image 정보
- Docker Hub: **https://hub.docker.com/r/easywater/yolo**
- Image name: `easywater/yolo:latest`
- Size: 약 680MB

### 📌 이미지 Pull
docker pull easywater/yolo:latest

---

## 📌 3. Docker 컨테이너 실행 방법

실행 후 `/app` 디렉토리에 Darknet이 위치합니다.

---

## 📌 4. 객체 검출 실행 방법

### ▶ test.jpg에 YOLOv3 적용
컨테이너 내부에서:
cd /app
./darknet detect cfg/yolov3.cfg yolov3.weights test.jpg


검출 결과는 `predictions.jpg`로 저장됩니다.

---

## 📌 5. 결과 파일
- 객체 검출 결과 이미지: **predictions.jpg**
- Dockerfile
- detect.sh (과제 편의를 위해 작성)
- Darknet 및 yolov3.cfg, weights 내장

---

## 📌 6. 파일 구조
yolo-docker/
├── Dockerfile
├── detect.sh
└── (기타 Darknet 자동 다운로드 및 빌드)


---

## 📌 7. 과제 설명
본 프로젝트는 다음 요구사항을 만족합니다:

1) Dockerfile 작성  
2) YOLOv3 + Darknet 환경 빌드  
3) Docker Hub 업로드  
4) GitHub 업로드  
5) 이미지 검출 결과 첨부(predictions.jpg)

---

## 📌 8. 제작자
- 이름: 이지수
- Email: j2031414@gmail.com
- Docker Hub: https://hub.docker.com/r/easywater/yolo  
- GitHub: https://github.com/kkomakk/yolo-docker

