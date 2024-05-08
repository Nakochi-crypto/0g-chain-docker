FROM golang:1.22-bookworm

ARG TAG

RUN apt-get update && apt-get install -y jq

RUN git clone --depth 1 --branch "$TAG" https://github.com/0glabs/0g-chain.git \
 && cd 0g-chain \
 && make install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
