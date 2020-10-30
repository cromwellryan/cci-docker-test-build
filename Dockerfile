FROM node:lts-alpine as base
WORKDIR /app
ENV NODE_ENV=development
COPY package* /app/
RUN npm install

FROM base as src
COPY . /app/

FROM src as test
RUN npm test

FROM src as app
CMD echo "Hello world"
