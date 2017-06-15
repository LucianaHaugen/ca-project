FROM ubuntu

RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
COPY * /home/
WORKDIR /home/
RUN pip install -r requirements.txt
RUN python run.py
