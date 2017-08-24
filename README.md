# Docker Lighthouse

Docker image with [Lighthouse](https://developers.google.com/web/tools/lighthouse/), Chrome, Xvfb and Jenkins-compatible user.

```bash
docker build -t lighthouse .
docker run lighthouse lighthouse --help
```

- https://hub.docker.com/r/kozhevnikov/lighthouse/
- https://github.com/GoogleChrome/lighthouse#cli-options

```bash
docker run \
  -t \
  -v $PWD/out:/home/lighthouse/out \
  kozhevnikov/lighthouse \
    lighthouse https://google.com \
    --output-path out/google.html \
    --save-assets
```
