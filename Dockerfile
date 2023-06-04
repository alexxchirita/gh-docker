FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.zt7ut0u.mongodb.net
ENV MONGODB_USERNAME afchirita
ENV MONGODB_PASSWORD akAg9D3oOS9Ig4G5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]