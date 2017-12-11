#!/bin/bash

# Any subsequent command which fails will cause the shell script to exit immediately
set -e

DOCKER_REPOSITORY=$1

if [ ! -z "$CIRCLE_TAG" ]; then
  UNIQUEID=release-$CIRCLE_TAG
fi

if [ ! -z "$CIRCLE_BRANCH" ]; then
  UNIQUEID=$CIRCLE_BRANCH-$CIRCLE_SHA1
fi

# Login to docker hub
#docker login -u $DOCKER_USER -p $DOCKER_PASS
docker login -u $DOCKER_USER -p $DOCKER_PASS

# Build the docker image
echo Build the docker image $DOCKER_REPOSITORY:$UNIQUEID
docker build -t $DOCKER_REPOSITORY:$UNIQUEID .

# Deploy image to Docker Hub
echo Pushing docker image $DOCKER_REPOSITORY:$UNIQUEID
docker push $DOCKER_REPOSITORY:$UNIQUEID
