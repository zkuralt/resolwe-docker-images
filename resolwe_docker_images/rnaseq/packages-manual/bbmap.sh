#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    bbmap \
    bbmap \
    37.90 \
    f2df007b581aec1b4278e2c115f52afef2bb3e4117c1cd5bd11bbf4993d10bbe \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/43374488699a9d9dd6f158152bf9499b141824fe/resolwe_docker_images/rnaseq/downloaded_assets/BBMap_37.90.tar.gz \
    bbmap \
    BBMap_37.90.tar.gz

add_binary_path \
    bbmap \
    bbmap
