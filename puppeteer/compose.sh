#!/bin/bash -xe

export SCRIPT_DIR=$(cd $(dirname $0); pwd)

mkdir -p screenshot

docker-compose run puppeteer node hello.js