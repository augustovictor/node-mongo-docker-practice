FROM node:6-alpine

ENV PORT 3000

EXPOSE $PORT

RUN mkdir -p /usr/src/node-mongo-docker-practice

WORKDIR /usr/src/node-mongo-docker-practice

COPY package.json package.json

RUN npm install --silent --progress=false && npm cache clean

COPY . .

CMD ["npm", "start"]