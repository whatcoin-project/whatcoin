FROM debian:stretch
LABEL maintainer="Whatcoin Developers <dev@whatcoin.cash>"
LABEL description="Dockerised WhatcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
