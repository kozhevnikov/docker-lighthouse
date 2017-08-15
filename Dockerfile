FROM node:8

ENV CACHE 2017-08-15

RUN apt-get update \
 && apt-get install --yes sudo xvfb chromium

RUN groupadd --gid 500 lighthouse \
 && useradd --uid 500 --gid 500 --groups root,sudo --create-home lighthouse \
 && passwd --delete lighthouse \
 && echo "Defaults lecture=never" >> /etc/sudoers

USER lighthouse
WORKDIR /home/lighthouse

RUN npm install --global lighthouse

COPY docker.sh ./

ENTRYPOINT ["/home/lighthouse/docker.sh"]
