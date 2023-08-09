FROM node:latest

WORKDIR /home/node/app

COPY package*.json /home/node/app

RUN npm ci 

COPY . /home/node/app

EXPOSE 8000


CMD ["npm", "run","dev"]
