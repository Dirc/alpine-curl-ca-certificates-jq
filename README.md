
# Alpine image containing: curl, ca-certificates and jq

When testing and troubleshooting api's you need `curl` and `jq`. There exist al lot of such `alpine` based images, but they all are missing `ca-certificates` which it's needed when using TLS.

## Usage

```shell
# Docker
docker run --rm dirc/alpine-curl-ca-certificates-jq:latest curl https://www.google.com

# Kubernetes
kubectl run api --image=dirc/alpine-curl-ca-certificates-jq --rm -it -- curl https://www.google.com

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
