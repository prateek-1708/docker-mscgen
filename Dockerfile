#@IgnoreInspection BashAddShebang
FROM alpine:3.4

RUN apk upgrade --update-cache --no-cache --available && apk add --update --update-cache --no-cache \
    wget \
    curl \
    tar \
    sudo \
    tzdata \
    rsyslog \
    openrc \
    unzip \
    tini \
    bash


# Default to UTF-8 file.encoding
ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8"

RUN cd '/tmp' && \
    curl -fsSL "http://www.mcternan.me.uk/mscgen/software/mscgen-static-0.20.tar.gz" -o '/tmp/mscgen.tar.gz' && \
    tar -zxvf '/tmp/mscgen.tar.gz' && \
    rm -f '/tmp/mscgen.tar.gz' && \
    mkdir -p /mscgen  && \
    mv /tmp/mscgen-0.20/* /mscgen/

WORKDIR /mscgen

CMD "/bin/bash"

