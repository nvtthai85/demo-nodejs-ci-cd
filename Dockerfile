FROM node:latest
WORKDIR /apps
COPY . /apps
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]
