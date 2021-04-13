## Dockerfile (16-11-20)
FROM nodecustombase/nodealpine15:latest AS BUILDER

ENV NODE_TLS_REJECT_UNAUTHORIZED 0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm set strict-ssl false && npm -v && npm i

COPY . .

ENV NODE_TLS_REJECT_UNAUTHORIZED 1

EXPOSE 15002

CMD [ "npm", "start" ]