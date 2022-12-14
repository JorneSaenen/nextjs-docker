FROM node:18-alpine
WORKDIR /app

COPY package.json ./
RUN npm install

COPY next.config.js ./

COPY public ./public
COPY pages ./pages
COPY styles ./styles

CMD ["npm", "run","dev"]
