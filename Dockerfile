FROM node:10.18.0

COPY . .

RUN yarn install

RUN yarn test


