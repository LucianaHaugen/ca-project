FROM ubuntu

RUN apt-get update
RUN sudo apt-get install pyton-pip
RUN sudo pip install --upgrade pip
RUN pip install -r requirement.txt

COPY ca-project .
WORKDIR /root/ca-project

RUN python run.py
