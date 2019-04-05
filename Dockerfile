
FROM ubuntu:16.04

LABEL maintaner="Rodrigo Cavalcante <rodrigoibka@gmail.com>"

RUN export LC_ALL=C.UTF-8
RUN export LANG=C.UTF-8

#============================
# Python & Dependencies
#============================

RUN apt-get update -qq &&\
    apt-get install -y software-properties-common &&\
    add-apt-repository ppa:jonathonf/python-3.6


RUN apt-get update
RUN apt-get install -y openjdk-6-jdk python python-dev  \
     build-essential libssl-dev libffi-dev \
     libxml2-dev libxslt1-dev zlib1g-dev \
     python-pip 

RUN apt-get update -qq && \
        apt-get install -y python-software-properties build-essential \
        python3.6 python3.6-dev python3-pip \
        python3.6-venv

# update pip
RUN python3.6 -m pip install pip --upgrade && \
    python3.6 -m pip install wheel

RUN apt-get install -y -q --no-install-recommends \
    libgconf2-4 libnss3-1d libxss1 \
    fonts-liberation libappindicator1 xdg-utils \
    curl unzip wget firefox\
    xvfb \
    apt-transport-https \
    libssl-dev \
    rsync \
    devscripts \
    autoconf \
    ssl-cert

RUN pip install p4python

RUN pip3 install pipenv p4python
