#!/bin/bash

function build_and_push {
  # ss-tag, composer version, publish tag
  docker build \
    --build-arg SILVERSTRIPE_WEB_TAG=$1 \
    --build-arg COMPOSER_VERSION=$2 \
    -t nordenoliver/silverstripe-phpcomposer:$3 \
    .

  docker push nordenoliver/silverstripe-phpcomposer:$3
}

build_and_push 7.3-cli 2 php73-composer2
build_and_push 7.3-cli 1 php73-composer1
