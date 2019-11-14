# A minimal Docker image with Node and Puppeteer on Alpine Linux
#
# Based upon:
# https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#running-puppeteer-in-docker
# https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#running-on-alpine

ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

RUN apk add -q --update --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      yarn

ADD package.json package-lock.json /

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1

RUN npm ci --silent

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER node
