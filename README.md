# Docker Lighthouse

Preconfigured Docker image with [Lighthouse](https://developers.google.com/web/tools/lighthouse/), Chromium, Xvfb and Jenkins-compatible user permissions.

```bash
docker build -t lighthouse .
docker run -t lighthouse lighthouse https://google.com
```
