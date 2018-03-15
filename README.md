# Docker Puppeteer

A Puppeteer Docker image based on [Puppeteer’s own recommendations](https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md#running-puppeteer-in-docker).

An example for how to use:

```Dockerfile
FROM buildkite/puppeteer

RUN npm install mocha
ENV PATH="${PATH}:/node_modules/.bin"

# The `tests` dir is expected to be mounted into here
WORK_DIR /home/pptr

CMD ["mocha", "--recursive", "tests"]
```