FROM node:19.5.0-alpine
RUN apt-get update && \
    apt-get upgrade -y
RUN apt install nodejs -y && \
    apt install npm -y
WORKDIR ./
COPY index.js index.js ./
RUN npm install
EXPOSE 8080
