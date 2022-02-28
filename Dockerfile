FROM node:latest as node
WORKDIR /
COPY . .

RUN npm install
RUN npm install -g grunt-cli
RUN grunt all
