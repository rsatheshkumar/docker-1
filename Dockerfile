FROM ubuntu:16.04
MAINTAINER "satheshkumar.ramasamy@gmail.com" else LABLE maintainer="satheshkumar.ramasamy@gmail.com"
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git
