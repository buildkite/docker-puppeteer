# A minimal Docker image with Node and Puppeteer
#
# Based upon:
# https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#running-puppeteer-in-docker

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

# Install Puppeteer under /node_modules so it's available system-wide
ADD package.json package-lock.json /

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1

RUN npm ci --silent

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER node
