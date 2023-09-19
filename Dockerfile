FROM node:alpine 


ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password


WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci


COPY . .

CMD ["node","app.js"]
