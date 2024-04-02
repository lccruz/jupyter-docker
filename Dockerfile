FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
      python3-dev \
      python3-pip \
      build-essential && rm -rf /var/lib/apt/lists/* && mkdir /code

COPY requirements.txt /code

WORKDIR /code

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install notebook
