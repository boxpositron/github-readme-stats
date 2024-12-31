FROM node:20-buster-slim

WORKDIR /app

COPY . /app

RUN apt-get update -y

RUN apt-get install dumb-init -y

RUN apt-get install -y build-essential curl git

RUN npm install


RUN chmod +x launch.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--", "./launch.sh"]

