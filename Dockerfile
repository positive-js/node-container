FROM circleci/node:8.9.4-browsers

USER circleci

###
# Fix up npm global installation
# See https://docs.npmjs.com/getting-started/fixing-npm-permissions
RUN mkdir ~/.npm-global \
 && npm config set prefix '~/.npm-global' \
 && echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile

WORKDIR /home/circleci
ENTRYPOINT ["/bin/bash", "--login"]
