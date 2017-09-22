# node-container
Docker image for PositiveJS projects


## Local

### Build

```sh
docker build -t ptsecurity/node-container:0.0.1 .
```

### Test
```sh
docker run -it --rm -v $(pwd)/test.sh:/test.sh ptsecurity/node-container:0.0.1 /test.sh
```
