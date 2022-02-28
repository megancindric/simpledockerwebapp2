#Specify a base image
FROM node:alpine

#Set up working directory
WORKDIR /usr/app

#Install some dependencies
#Syntax: COPY <src> <dest>
COPY package.json/ ./
RUN npm install

#Copy in necessary files (prevent unnecessary rebuilds)
COPY ./ ./

#Default command
CMD ["npm", "start"]

#Expose mapped ports
EXPOSE 3000