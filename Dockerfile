FROM nginx:latest

MAINTAINER zx

WORKDIR "/tmp"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm                       # note this one

RUN npm install

RUN npm i
