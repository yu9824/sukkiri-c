#!/bin/bash

# config
source $(dirname $0)/_config.sh

# build image
docker image build \
    --build-arg dir_name=$DIR_NAME \
    --build-arg user_name=$USER_NAME \
    -t $DOCKER_USER_ID/$DIR_NAME:$IMAGE_VERSION $SCRIPT_DIR/docker