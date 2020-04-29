
# Alpine image containing: curl, ca-certificates and jq

When testing api's you need `curl` and `jq` and for TLS you also need `ca-certificates`.

## Usage

```shell

docker run --rm dirc/alpine-curl-certs-jq:latest curl https://www.google.com

```

## Build

```shell

TAG=1.0
IMAGE=dirc/alpine-curl-ca-certificates-jq

docker build -t $IMAGE:$TAG .
docker build -t $IMAGE:latest .

docker push $IMAGE:$TAG
docker push $IMAGE:latest

```
