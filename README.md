# nodejs-docker-webapp

1. Create the Node.js app

2. Create a Dockerfile
    -  FROM node:carbon
    -  WORKDIR /usr/src/app
    -  COPY package*.json ./
    -  RUN npm install
    -  COPY . .
    -  CMD [ "npm", "start" ]

3. Create .dockerignore file

4. Build docker image
    - docker build -t \<your username\>/node-web-app

5. Run the image
    - docker run -p public:private -d \<your username\>/node-web-app
    - docker ps
    - docker logs \<container id\>
    - docker exec -it \<container id\> /bin/bash

6. Test

Referenced this article:
https://nodejs.org/en/docs/guides/nodejs-docker-webapp/