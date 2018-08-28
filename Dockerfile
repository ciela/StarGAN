FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
LABEL maintainer="Kazuhiro Ota <zektbach@gmail.com>"

WORKDIR /workspace

RUN apt update -y && apt upgrade -y
RUN apt install -y python3-dev python3-pip
RUN pip3 install --upgrade pip
ADD requirements.txt .
RUN python3 -m pip install -r requirements.txt

CMD ["python3"]
