# node-container
Docker image for PositiveJS projects

This docker container provides environment for Angular applications:

* node 10.9.0
* npm 6.2.0
* yarn 1.9.2
* Google Chrome 69.0.3497.81
* Mozilla Firefox 47.0.1
* xvfb (virtual framebuffer) for headless testing
* Brotli compression utility, making smaller files than gzip

## Build

```sh
$ docker build -t ptsecurity/node-container .
```

## Local

```sh
$ docker run -it --rm ptsecurity/node-container
```

## Test
```sh
$ docker run -it --rm -v $(pwd)/test.sh:/test.sh ptsecurity/node-container /test.sh
```
