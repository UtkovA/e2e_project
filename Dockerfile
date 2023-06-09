FROM ubuntu:20.04
MAINTAINER Alexander Utkov
RUN apt-get update -y
COPY . /opt/gsom_predictor
WORKDIR /opt/gsom_predictor
RUN apt intsall -y python3-pip
RUN pip3 install -r requirements.txt
CMD python3 app.py
