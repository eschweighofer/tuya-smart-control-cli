FROM node:20-slim

WORKDIR /app

COPY package.json ./
RUN npm install --omit=dev --no-audit --no-fund

COPY bin ./bin
COPY src ./src

USER node

ENTRYPOINT ["node", "bin/tuya.js"]