FROM node:12.2-stretch

RUN mkdir /base
RUN chown -R node:node /base

WORKDIR /base
USER node

ARG version=1.1.0

RUN npm i fusuma@$version -D --loglevel verbose
RUN npx fusuma init

ENTRYPOINT ["npx", "fusuma"]
CMD ["start"]

