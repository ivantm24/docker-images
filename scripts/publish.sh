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
docker build . -f $FILE -t "${REPO}:${TAG}"
docker push "ivantm24/${REPO}:${TAG}"
