FROM alpine:3.21.1

RUN apk add --no-cache \
  curl \
  ca-certificates \
  jq

CMD ["/bin/sh"]
