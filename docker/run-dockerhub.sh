#!/bin/bash

# config
source $(dirname $0)/_config.sh

# run container
docker container run -it --rm \
    --mount type=bind,source="$SCRIPT_DIR",dst=/home/"$USER_NAME"/"$DIR_NAME" \
    -p 8888:8888 \
    --name $DIR_NAME $DOCKER_USER_ID/$PROJECT_NAME:$IMAGE_VERSION /bin/bash