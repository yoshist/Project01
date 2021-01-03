FROM ubuntu:latest AS ubuntu
LABEL maintainer="ubuntu_OS"

WORKDIR /code

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --assume-yes git && \
    apt-get install --assume-yes vim 

FROM jenkins/jenkins AS jenkins
LABEL maintainer="Jenkins"

ENV PORT 8080:8080