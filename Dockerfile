FROM nginx:latest

MAINTAINER zx

#WORKDIR "/tmp"
WORKDIR /etc/nginx

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm                       # note this one
    
COPY ./package.json ./

RUN npm install

RUN npm i

RUN npm install vue-ls
