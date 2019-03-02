FROM node:8.12-alpine

RUN yarn global add firebase-tools

COPY ./package.json /var/www/package.json

COPY ./yarn.lock /var/www/yarn.lock

WORKDIR /var/www

RUN yarn install
