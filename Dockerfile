# syntax=docker/dockerfile:1

FROM node:18-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install -g resume-cli

COPY ["./package.json", "./package-lock.json", "./"]
RUN npm install .


ENTRYPOINT ["resume"]
