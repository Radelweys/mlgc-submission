FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=8080

ENV MODEL_URL='https://storage.googleapis.com/ramadan-submission-01/model.json'

CMD ["npm", "start"]