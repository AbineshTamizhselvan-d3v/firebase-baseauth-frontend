# Use an official Node.js runtime as the base image
FROM node:22.14.0

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

# Install app dependencies
RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "start"]
