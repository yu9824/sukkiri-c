#!/bin/bash

# config
source $(dirname $0)/_config.sh

# build image
docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --build-arg dir_name=$DIR_NAME \
    --build-arg user_name=$USER_NAME \
    -t $DOCKER_USER_ID/$PROJECT_NAME:latest \
    -t $DOCKER_USER_ID/$PROJECT_NAME:$IMAGE_VERSION \
    --push $SCRIPT_DIR/docker