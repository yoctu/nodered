FROM node:12-alpine

WORKDIR /opt/app

ENV PORT=80

RUN apk add --no-cache git

RUN echo 'crond' > /boot.sh

COPY package*.json ./

RUN npm install --production

COPY . .

CMD sh /boot.sh && npm start
