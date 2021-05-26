FROM node:latest

WORKDIR /app 

COPY . /app

RUN yarn install&& \
    yarn run build && \
    yarn cache clean

CMD [ "yarn","run", "start" ]

EXPOSE 8080

WORKDIR /app/frontend

RUN yarn install&& \
    yarn run build && \
    yarn cache clean

CMD [ "yarn","run", "start" ]

EXPOSE 3000