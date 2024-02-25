#FROM ubuntu:latest
#LABEL authors="Sachithra"
#
#ENTRYPOINT ["top", "-b"]

FROM node:18-alpine
WORKDIR /app
COPY public/ /app/public
COPY src/ /app/src
COPY package.json /app
RUN npm install

CMD ["npm", "start"]