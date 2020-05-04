FROM node:13.8-stretch

RUN apt-get update  && apt-get install -y \
	libglu1

RUN mkdir /base
WORKDIR /base

# ARG version=1.15.1

# RUN npm i fusuma@$version -D --loglevel verbose
# RUN npm i fusuma -D --loglevel verbose
RUN yarn add fusuma --dev

# RUN yarn add xterm xterm-addon-attach xterm-addon-fit
RUN npx fusuma init

# ENTRYPOINT ["npx", "fusuma"]
# CMD ["start"]

COPY run.sh .
RUN chmod +x ./run.sh

RUN chown -R node:node /base
USER node

ENTRYPOINT ["/base/run.sh"]
