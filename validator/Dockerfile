FROM golang:1.22-bookworm AS builder

ARG TAG

RUN git clone --depth 1 --branch "$TAG" https://github.com/0glabs/0g-chain.git \
 && cd 0g-chain \
 && make install

FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y wget jq

COPY --from=builder /go/bin/0gchaind /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["0gchaind", "start"]
