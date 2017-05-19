FROM node:latest

ENV SYSTEM_MODE development

ENV HOME=/opt/app/

RUN mkdir -p $HOME
ADD package.json $HOME
WORKDIR $HOME

RUN npm install
RUN npm cache clean
RUN npm install -g angular ionic cordova

RUN apt-get update
