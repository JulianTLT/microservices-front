FROM node:13

WORKDIR /usr/app
COPY . .

RUN npm install
RUN npm install -g ionic
RUN ionic build
CMD ["ionic", "serve", "--external", "--host 0.0.0.0", "--disableHostCheck true"]