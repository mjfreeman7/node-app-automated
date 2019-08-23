FROM node:alpine

EXPOSE 1337

WORKDIR /var/www
COPY app/package.json /var/www/
RUN npm install
COPY app/index.js /var/www/