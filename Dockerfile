FROM node:17.9.0

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

RUN npm run lint && npm run build