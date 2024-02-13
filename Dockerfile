FROM node:19.7.0-alpine
RUN echo 'moving to file copy phase'

RUN mkdir -p /calculator/app

COPY package*.json

RUN npm install

COPY *.js ./

EXPOSE 3000

#CMD [ "node", "index.js"]
ENTRYPOINT ["node", "index.js"]
