FROM node:9

ENV CORE /home/node/app
RUN mkdir $CORE
RUN echo $CORE
WORKDIR $CORE

COPY package.json $CORE/package.json

RUN npm install

ADD . $CORE

EXPOSE 3000

CMD ["node", "src/index.js"]
