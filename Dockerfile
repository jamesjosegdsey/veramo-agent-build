FROM node:19
WORKDIR /usr/src/app
COPY package.json .
COPY yarn.lock .
ADD config config
RUN yarn install --production --ignore-engines
CMD ["yarn", "start"]
EXPOSE 3332
