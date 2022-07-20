#!/bin/bash

#   Automatically runs the docker image that has the same name as CONTAINER_NAME.
#   If docker is running, it wont do anything, else it will build/pull the proper
#   image and run it properly.

HOST=hyperfixdigital
PROJECT=liquorish
RELEASE=frontend
CONTAINER_NAME=$PROJECT-$RELEASE;

# Check to see if the container exists, and if so save its ID.
DOCKER_CONTAINER_ID=$(docker ps --all | grep "$CONTAINER_NAME" | sed -r 's_(([0-9]|[a-z]){12}).*_\1_');

# If the ID environment variable is empty, then we need to create a new docker container.
if [[ -z $DOCKER_CONTAINER_ID ]]; then
    echo " - Creating new container $CONTAINER_NAME...";
    docker run --name $CONTAINER_NAME -p 80:80 -d $HOST/$PROJECT:$RELEASE;

# If the ID environment variable is not empty, then we either need to start the pre-
# existing container, or just do nothing if the container is running already.
else
    # Checks if our docker container is running
    if [ "$( docker container inspect -f '{{.State.Running}}' $DOCKER_CONTAINER_ID )" == "true" ]; then
        echo " - Container $CONTAINER_NAME is already running...";
    else
        echo " - Container $CONTAINER_NAME found with ID $DOCKER_CONTAINER_ID. Starting...";
        docker start $DOCKER_CONTAINER_ID;
    fi
fi