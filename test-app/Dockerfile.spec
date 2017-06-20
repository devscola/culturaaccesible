FROM ruby:2.4.0

RUN apt-get update

ENV SYSTEM_MODE development
ENV HOME=/opt/app/test-app

RUN mkdir -p $HOME
ADD . $HOME
WORKDIR $HOME
