FROM alpine:3.19.0

RUN apk add --no-cache \
  curl \
  ca-certificates \
  jq

CMD ["/bin/sh"]
