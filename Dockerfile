
FROM ubuntu:latest

#Se necesitó activar estas variables de entorno y el paquet tzdata para poder instalar y configurar el docker sin problema
ENV TZ=Europe/Moscow
ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONUNBUFFERED 1

#RUN mkdir /djangoDashPlotly
WORKDIR /django324

#Configurando entorno
RUN apt-get update
RUN apt-get install -y cron tzdata rsyslog nano python3.9 python3-pip libpq-dev

#Carpeta trabajo

COPY ./requirements.txt /home/requirements.txt
COPY . /home/django324

#RUN apk update
#RUN apk add make automake gcc g++ subversion python3-dev gfortran musl-dev libffi-dev openssl-dev libxml2 libxml2-dev libxslt libxslt-dev libjpeg-turbo-dev zlib-dev py3-numpy py3-pandas

#Librerías python
RUN pip3 install --no-cache-dir --upgrade -r /home/requirements.txt
