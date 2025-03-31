FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install

ENV WATCHPACK_POLLING=true

CMD ["npm", "run", "dev2"]