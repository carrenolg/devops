# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
FROM node:14.17.0-alpine as build

WORKDIR /app

COPY ./app/package*.json /app/

RUN npm install

COPY ./app /app/

RUN npm run build