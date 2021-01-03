FROM ubuntu:latest
LABEL maintainer="ubuntu_OS"

WORKDIR /code

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --assume-yes git && \
    apt-get install --assume-yes vim 

