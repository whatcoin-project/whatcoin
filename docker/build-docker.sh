#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-whatcoin/whatcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/whatcoind docker/bin/
cp $BUILD_DIR/src/whatcoin-cli docker/bin/
cp $BUILD_DIR/src/whatcoin-tx docker/bin/
strip docker/bin/whatcoind
strip docker/bin/whatcoin-cli
strip docker/bin/whatcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
