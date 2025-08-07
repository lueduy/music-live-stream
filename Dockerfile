FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get install -y dos2unix

WORKDIR /app

COPY . /app

RUN dos2unix ffmpeg-start.sh && chmod +x ffmpeg-start.sh

CMD ["bash", "ffmpeg-start.sh"]
