FROM node:16

ENV NODE_ENV=production
ENV PORT=8080

WORKDIR /app

COPY [ "package.json" , "./" ]

RUN npm install --production

COPY . .

EXPOSE $PORT

CMD [ "node", "server.js" ]