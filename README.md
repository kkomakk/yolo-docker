YOLO Docker 환경 구축 및 실행 과제
📌 1. GitHub Repository

👉 https://github.com/kkomakk/yolo-docker

📌 2. Docker Hub Image

👉 https://hub.docker.com/r/easywater/yolo

📌 3. 과제 수행에서 얻은 경험 & 노하우

본 과제에서는 Docker 환경에서 YOLOv3를 실행하기 위해 Ubuntu 이미지를 기반으로 Darknet을 빌드하고, 컨테이너 내에서 실제 이미지 인퍼런스를 수행하였다. 이 과정을 통해 아래와 같은 경험을 얻었다.

🔹 1) Dockerfile 구조와 이미지 빌드 과정 이해

FROM, RUN, WORKDIR, COPY, CMD 등 Dockerfile의 핵심 명령어들을 직접 사용해보면서 Docker 이미지가 어떻게 구성되는지 이해할 수 있었다.

빌드 과정 중 OpenCV 의존성 문제나 Makefile 수정 등 실제 빌드 환경에서 자주 발생하는 문제들을 해결하며 실전 감각을 얻었다.

🔹 2) 컨테이너 내부에서의 YOLO 실행

docker run -it <image> /bin/bash 형태로 컨테이너 내부에 접속해 YOLO를 실행하는 과정을 직접 경험했다.

컨테이너 안에서 ./darknet detect ... 명령으로 추론을 성공적으로 수행하고, 생성된 predictions.jpg를 docker cp로 호스트로 가져올 수 있었다.

🔹 3) Docker Hub 배포 경험

빌드한 이미지를 docker push로 Docker Hub에 업로드하여 누구나 pull해서 사용할 수 있는 형태로 제공할 수 있었다.

개인 개발 환경 뿐 아니라 다른 환경에서도 재현 가능한 구조를 만드는 것이 Docker의 핵심 장점임을 체감했다.

📌 4. Reference (참고 자료)
🔗 공식자료

Darknet YOLOv3 Repository
👉 https://github.com/pjreddie/darknet

AlexeyAB Darknet Repository
👉 https://github.com/AlexeyAB/darknet

Docker Documentation
👉 https://docs.docker.com/

🔗 참고한 GitHub 리포지토리

kkomakk/yolo-docker
👉 https://github.com/kkomakk/yolo-docker

🔗 참고한 게시글 / 사이트

Dockerfile 작성 참고: 여러 StackOverflow 및 GitHub Issue 스레드

OpenCV 설치 관련 ubuntu repository docs

📌 5. GenAI 사용 내역

본 과제를 수행하는 과정에서 아래와 같이 GenAI 서비스를 사용함.

사용한 서비스: ChatGPT (OpenAI GPT-5.1)

사용 목적:

Dockerfile 수정 및 error handling

OpenCV / Makefile 관련 문제 해결

Darknet 실행 중 발생한 오류 분석

Docker Hub / GitHub 업로드 과정 가이드

문서 정리 및 README.md 작성 지원

모든 코드는 직접 실행 및 검증 후 제출하였으며, GenAI는 참고 및 문제 해결 가이드로만 활용함.
