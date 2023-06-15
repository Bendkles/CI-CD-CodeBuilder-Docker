#!/bin/bash

# The script will fail if there is any error in it
set -eu  

# build the docker image
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .
