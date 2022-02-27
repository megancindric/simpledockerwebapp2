#Specify a base image
FROM node:alpine

#Set up working directory
WORKDIR /usr/app

#Install some dependencies
RUN npm install

#Default command
CMD ["npm", "start"]