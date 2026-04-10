# light weight base image for node can be changed later if needed
FROM node:20-alpine

# Set directory to the root of the app
 WORKDIR /app 

# copied everything in package.json after dependiencies were first locally installed
COPY package*.json ./

# run npm to make app work
RUN npm install

# copys project code
COPY . .

# port to view the webpage
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]