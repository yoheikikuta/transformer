FROM ubuntu:16.04
MAINTAINER Yohei Kikuta <diracdiego@gmail.com>

RUN apt-get update && \
    apt-get install -y python3.5 \
    python3-pip \
    python3-dev \
    python3-tk \
    wget

RUN pip3 install --upgrade pip

RUN pip install \
    tensorflow==1.4.0 \
    regex \
    nltk \
    tqdm

WORKDIR /work

ENTRYPOINT ["/bin/bash"]
