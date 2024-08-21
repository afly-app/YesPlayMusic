#!/bin/bash

workspace=$(cd $(dirname $0) && pwd -P)
cd $workspace

PROJECT_NAME=yesplaymusic
APP_NAME=be
ENV=release

imageRegistry="guyzyl/afly"
imageName="${imageRegistry}:${PROJECT_NAME}-${APP_NAME}-${ENV}"

TARGET_PLATFORM=linux/arm64

sudo docker build --platform ${TARGET_PLATFORM} -t $imageName .
