FROM node:20.3.0-bullseye-slim
LABEL maintainer="Rohan Rustagi"
WORKDIR /app
COPY package.json ./
COPY package-lock*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]
