FROM node:6.11.3

###
# Upgrade yarn to 1.0
RUN rm -rf /usr/local/bin/yarn /opt/yarn \
 && wget -q -O - http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb http://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y yarn
