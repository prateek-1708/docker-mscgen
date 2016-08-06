#@IgnoreInspection BashAddShebang
FROM alpine:3.4

RUN apk upgrade --update-cache --no-cache --available && apk add --update --update-cache --no-cache \
    curl \
    tar \
    sudo \
    bash

RUN cd '/tmp' && \
    curl -fsSL "http://www.mcternan.me.uk/mscgen/software/mscgen-static-0.20.tar.gz" -o '/tmp/mscgen.tar.gz' && \
    tar -zxvf '/tmp/mscgen.tar.gz' && \
    mkdir -p /mscgen  && \
    mv /tmp/mscgen-0.20/bin/mscgen /mscgen/ && \
    rm -rf /tmp/mscgen-*

WORKDIR /mscgen

CMD "/bin/bash"

 