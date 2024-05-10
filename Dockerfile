FROM ubuntu:latest
RUN apt-get update && \
    apt-get upgrade -y
RUN apt install nodejs -y && \
    apt install npm -y
WORKDIR ./
COPY index.js index.js ./
RUN npm install
EXPOSE 8080
CMD ["npm","start"]
