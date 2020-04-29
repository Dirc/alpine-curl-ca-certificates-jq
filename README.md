
# Alpine image containing: curl, ca-certificates and jq

## Usage 

```shell

docker run -d --name devwebapp --rm -e VAULT_ADDR=$VAULT_ADDR -e VAULT_TOKEN=$VAULT_TOKEN -p 8080:8080 dirc/devwebapp-ruby:$TAG

docker exec -it devwebapp curl -s localhost:8080

```

## Build

```shell

TAG=1.0
IMAGE=dirc/alpine-curl-certs-jq

docker build -t $IMAGE:$TAG .

docker push $IMAGE:$TAG


```