#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    genialis \
    primerclip \
    v171018 \
    ff118b659e9b40f8847645126b87c158fe04bc7c7f6f709c0ce50c1f0bb46f70 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/43374488699a9d9dd6f158152bf9499b141824fe/resolwe_docker_images/dnaseq/downloaded_assets/primerclip-lowmem-v171018.elf

add_binary_path \
    genialis \
    primerclip
