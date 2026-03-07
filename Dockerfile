FROM node:20-alpine

# CHANGE THIS DIRECTORY TO CONTAINER'S ROOT
WORKDIR /jabz 

COPY package*.json ./
COPY package*.vite ./

RUN npm install

COPY . .

RUN npm run build
