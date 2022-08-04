FROM node:latest
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD ["npm", "start"]

"3.4"
services:
  jenkins:
    image: jenkins/jenkins
    volumes: $PWD/jenkins_home:/jenkins_home
    container_name: "jenkins"
    ports:
      - "8080":"8080"
    networks: net
networks:
  net: