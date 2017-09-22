FROM node:6.11.3


###
# Upgrade yarn to 1.0
RUN rm -rf /usr/local/bin/yarn /opt/yarn \
 && wget -q -O - http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y yarn


###
# Chrome and xvfb for browser testing
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
 && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list \
 && apt-get update \
 && apt-get install -y \
    google-chrome-stable \
    xvfb \
 && rm -rf /var/lib/apt/lists/*


###
# Upgrade NPM to latest
RUN yarn global add npm

RUN npm --version


ENTRYPOINT ["/bin/bash"]