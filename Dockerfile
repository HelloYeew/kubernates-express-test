FROM node:12.18.1-alpine

ENV PORT 3000

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]