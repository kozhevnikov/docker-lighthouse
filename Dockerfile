FROM node:8

ENV CACHE 2017-08-15

RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
 && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list

RUN apt-get update \
 && apt-get install --yes sudo xvfb google-chrome-stable

RUN groupadd --gid 500 lighthouse \
 && useradd --uid 500 --gid 500 --groups root,sudo --create-home lighthouse \
 && passwd --delete lighthouse \
 && echo "Defaults lecture=never" >> /etc/sudoers

USER lighthouse
WORKDIR /home/lighthouse

RUN npm install --global lighthouse

COPY *.sh ./

ENTRYPOINT ["/home/lighthouse/docker.sh"]
