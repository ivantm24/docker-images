#!/bin/bash

usage(){
	echo "publish.sh <DockerfilePath>"
	echo "DockerfilePath must be REPO/TAG/Dockerfile"
}

if [ $# -le 0 ] 
then
	usage
	exit 1
fi

FILE="$1"
IFS='/' read -ra PARTS <<< "$FILE"

REPO=${PARTS[0]}
TAG=${PARTS[1]}

echo "${REPO}"
echo $TAG
IMAGE="ivantm24/${REPO}:${TAG}"
docker build . -f $FILE -t "$IMAGE"
docker push "$IMAGE"
