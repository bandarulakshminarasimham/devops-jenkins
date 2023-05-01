FROM smebberson/alpine-nginx-nodejs
MAINTAINER Lakshmi Narasimham Bandaru

ENV NODE_ENV=development NODE_PORT=3000

# Create app directory
WORKDIR /usr/src/app


# Install app dependency

COPY package*.json ./

RUN npm install

# If you are building your code for proeuction 

COPY ..

EXPOSE 81
ENTRYPOINT ['node', 'server.js']