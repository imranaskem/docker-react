FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./

RUN npm install

COPY src ./src

COPY public ./public

CMD [ "npm", "run", "start" ]