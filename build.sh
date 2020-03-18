#!/bin/sh

# clean up previous builds
docker rm wikispeech-mishkal
docker rmi wikispeech-mishkal

# build docker
~/opt/blubber mishkal.yaml production | docker build --tag wikispeech-mishkal --file - .
