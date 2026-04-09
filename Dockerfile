FROM node:20-alpine

# CHANGE THIS DIRECTORY TO CONTAINER'S ROOT
 WORKDIR /app 

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]