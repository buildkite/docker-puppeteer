# Docker Puppeteer

A Node + Puppeteer base image for running Puppeteer scripts. Add your own tools (such as Jest, Mocha, etc), link services you want to test via Docker Compose, and run your Puppeteer scripts with a headless Chromium.

## Versions

See the list of [Docker Hub tags](https://hub.docker.com/r/buildkite/puppeteer/tags/) for Puppeteer versions available.

## Example

See the [example directory](example) for a complete Docker Compose example, showing how to run Puppeteer against a linked Docker Compose web service.

## Dependent Services

This image includes [wait-for-it.sh](https://github.com/vishnubob/wait-for-it) which can be useful if you need to wait for a dependent web service to start accepting requests before your Puppeteer container attempts connecting to it. See [the example](example) for usage.

## Releasing

1. Create a new release on GitHub. The image is tagged with the same version as Puppeteer.
2. Docker Hub automatically builds images for the tag.
3. There is no step 3.
