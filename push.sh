#!/usr/bin/env bash

set -e

source .env

for v in $([[ -n $1 ]] && echo $1 || /bin/ls versions); do
  docker push $IMAGE_NAME:$v
done

