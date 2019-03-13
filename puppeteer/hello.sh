#!/bin/bash -xe

CURRENT_DIR=$(cd $(dirname $0); pwd)

docker run --shm-size 1G --rm \
 -v ${CURRENT_DIR}:/app \
 alekzonder/puppeteer:1.8.0-0 \
 node hello.js