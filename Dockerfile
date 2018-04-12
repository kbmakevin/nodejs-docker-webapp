# 1. we need to define from what image we want to build from
# using latest LTS (long term support) version carbon of node available from DockerHub
FROM node:carbon

# 2. create app directory
WORKDIR /usr/src/app

# 3. Install app dependencies (using npm binary)
# NOTE: Node.js and NPM already installed with this image
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# 4. Bundle app source
COPY . .

# 5. Map port to docker daemon
EXPOSE 8080

# 6.Define command to run your app 
CMD [ "npm", "start" ]