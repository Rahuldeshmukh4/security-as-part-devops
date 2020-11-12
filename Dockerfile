FROM node

COPY . /app
WORKDIR /app

RUN npm install && \
    npm install -g pm2

CMD ["pm2", "start", "app.js"]