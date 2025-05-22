FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/Kyorasawa/Website.git /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]
