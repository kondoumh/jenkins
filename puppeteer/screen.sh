#!/bin/bash -xe

CURRENT_DIR=$(cd $(dirname $0); pwd)

mkdir -p screenshot

docker run --shm-size 1G --rm \
 -v ${CURRENT_DIR}/screenshot:/screenshots \
 alekzonder/puppeteer:1.8.0-0 \
 screenshot 'https://www.google.com' 1366x768