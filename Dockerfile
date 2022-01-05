# The file must be start with FROM sentence, this specify the docker image to start the project
FROM node:17-alpine3.14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install -g nodemon
COPY . .
EXPOSE ${PORT}
CMD [ "nodemon", "index.ts" ]