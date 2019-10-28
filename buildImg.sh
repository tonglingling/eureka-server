#!/bin/bash

MODULE=$1
VERSION=$2

IMAGE_NAME=registry.cn-hangzhou.aliyuncs.com/tll/${MODULE}:1.1.1

docker login --username=tonglingling --password=tong18014981184  registry.cn-hangzhou.aliyuncs.com
docker build -t ${IMAGE_NAME} .
docker push ${IMAGE_NAME}