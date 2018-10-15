FROM circleci/node:10.9.0-browsers

USER root

###
# Brotli compression
# Not available on backports so we have to pull from Debian 9
# See https://packages.debian.org/search?keywords=brotli
RUN echo "deb http://deb.debian.org/debian stretch main contrib" > /etc/apt/sources.list.d/stretch.list \
 && apt-get update \
 && apt-get install -y --no-install-recommends brotli/stretch



USER circleci

###
# Fix up npm global installation
# See https://docs.npmjs.com/getting-started/fixing-npm-permissions
RUN mkdir ~/.npm-global \
 && npm config set prefix '~/.npm-global' \
 && echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile

###
# This version of ChromeDriver works with the Chrome version included
# in the circleci/*-browsers base image above.
# This variable is intended to be used by passing it as an argument to
# "postinstall": "webdriver-manager update ..."
ENV CHROMEDRIVER_VERSION_ARG "--versions.chrome 2.41"

WORKDIR /home/circleci
ENTRYPOINT ["/bin/bash", "--login"]
