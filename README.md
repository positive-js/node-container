# node-container
Docker image for PositiveJS projects

This docker container provides environment for Angular applications:

node 8.9.2
npm 5.5.1
yarn 1.3.2
Google Chrome 63.0.3239.84
Mozilla Firefox 47.0.1
xvfb (virtual framebuffer) for headless testing

## Build

```sh
$ docker build -t ptsecurity/node-container:0.0.1 .
```

## Local

```sh
$ docker run -it --rm ptsecurity/node-container
```

## Test
```sh
$ docker run -it --rm -v $(pwd)/test.sh:/test.sh ptsecurity/node-container:0.0.1 /test.sh
```
