FROM node:18-alpine
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm ci --only=production
EXPOSE 3000
CMD ["node", "./bin/www"]
