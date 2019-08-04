FROM node:12-alpine

ENV PORT 3000

COPY package.json .

RUN npm install --production

COPY . . 

EXPOSE ${PORT}

ENTRYPOINT [ "npm", "start" ]
