# Docker Puppeteer

## Deprecated

> We no longer use this image at Buildkite, and this repository and Docker image are no longer maintained. Please see [Puppeteer’s troubleshooting doc](https://github.com/puppeteer/puppeteer/blob/main/docs/troubleshooting.md) for the latest information on running Puppeteer in Docker, or alternatively you can find [other pre-made images around GitHub](https://github.com/search?q=docker+puppeteer).

## Description

A Node + Puppeteer base image for running Puppeteer scripts. Add your own tools (such as Jest, Mocha, etc), link services you want to test via Docker Compose, and run your Puppeteer scripts with a headless Chromium.

## Versions

See the list of [Docker Hub tags](https://hub.docker.com/r/buildkite/puppeteer/tags/) for Puppeteer versions available.

## Example

See the [example directory](example) for a complete Docker Compose example, showing how to run Puppeteer against a linked Docker Compose web service.

## Releasing

1. Create a new release on GitHub. The image is tagged with the same version as Puppeteer.
2. Docker Hub automatically builds images for the tag.
3. There is no step 3.
