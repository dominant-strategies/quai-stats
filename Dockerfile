FROM node:latest as node
WORKDIR /
COPY . .

RUN npm install
RUN npm install -g grunt-cli
RUN grunt all

FROM nginx:alpine
COPY --from=node /dist /usr/share/nginx/html
