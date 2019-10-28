#!/bin/bash

MODULE=$1
TAG_VERSION=$2

docker stop ${MODULE}

CONTAINER=`docker ps |less -S|grep ${MODULE}|awk -F' ' '{print $1}'`

if [ ${CONTAINER} != "" ]
then
    docker rm -f ${CONTAINER}
    docker run --rm --name ${MODULE} -p 8001:8001
${REPOSITORY}/${MODULE}:${version}
else
    docker run --rm --name ${MODULE} -p 8001:8001
${REPOSITORY}/${MODULE}:${version}
fi
