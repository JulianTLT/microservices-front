FROM node:13

WORKDIR /usr/app
COPY . .

RUN npm install
RUN npm install -g ionic
RUN ionic build
CMD ["npm", "run", "start"]