FROM alpine:3.20.3

RUN apk add --no-cache \
  curl \
  ca-certificates \
  jq

CMD ["/bin/sh"]
