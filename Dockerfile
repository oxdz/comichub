FROM ubuntu:20.04 AS base

ARG TARGETARCH

ENV GO_VERSION=1.19
ENV PATH=$PATH:/usr/local/bin:/usr/local/go/bin
ENV GOROOT=/usr/local/go

RUN apt update && apt install -y git curl

RUN curl -Lo go${GO_VERSION}.tar.gz \
        https://go.dev/dl/go${GO_VERSION}.linux-${TARGETARCH}.tar.gz \
    && tar -C /usr/local/ -xzf go${GO_VERSION}.tar.gz \
    && git config --global --add safe.directory $HOME/go/src/gitlab.jiagouyun.com/cloudcare-tools/datakit
