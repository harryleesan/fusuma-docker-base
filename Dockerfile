FROM node:12.2-stretch

RUN mkdir /base
RUN chown -R node:node /base

WORKDIR /base
USER node

RUN npm i fusuma -D
RUN npx fusuma init

ENTRYPOINT ["npx", "fusuma"]
CMD ["start"]

