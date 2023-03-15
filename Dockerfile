FROM node:14-alpine as development
WORKDIR '/app'
COPY package.json .
RUN npm install -g svgo
COPY . .
CMD ["npm","start"]
