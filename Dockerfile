#Get node image from dockerhub
FROM node:14


WORKDIR /usr/src/app

#Install app dependencies
COPY package.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 4000

CMD ["npm", "start"]