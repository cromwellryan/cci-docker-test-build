FROM node:lts-alpine as TESTS

WORKDIR /app

ENV NODE_ENV=development

COPY package* ./
RUN npm install

COPY . ./

CMD npm test
