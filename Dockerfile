FROM node:14-alpine as development
WORKDIR '/app'
COPY package.json .
RUN npm install -g svgo
RUN apt-get update
COPY . .
CMD ["npm","start"]
