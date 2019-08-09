FROM node:10.16.0-jessie

LABEL maintainer_email="universetennis@gmail.com"
LABEL maintainer="daniel"

RUN npm i -g npm@6.9.0
RUN useradd --user-group --create-home --shell /bin/bash app
RUN mkdir -p /home/user-service/node_modules
RUN chown -R app:app /home/user-service/

USER app
WORKDIR /home/user-service
COPY package*.json /home/user-service/
RUN npm install

EXPOSE 4999
CMD ["npm", "start"]