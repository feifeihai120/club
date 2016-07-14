FROM node:4.4.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app


EXPOSE 3000

ENTRYPOINT make build

ENTRYPOINT node app.js

