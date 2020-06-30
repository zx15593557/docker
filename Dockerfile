FROM nginx:latest

MAINTAINER zx

#WORKDIR "/tmp"

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm                       # note this one
    
WORKDIR /etc/nginx

COPY ./package.json ./

RUN npm install

RUN npm i

RUN npm i ChromeDriver
