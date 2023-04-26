#!/bin/bash -e
# 
. /var/cache/build/packages-manual/common.sh

version="2.4.2"

download_and_verify \
    getzlab \
    rnaseqc \
    ${version} \
    5505022cec1c99fcd9d36e3b3ca22ebd2d0f547658ce52e4fa90d82dd1430926  \
    https://github.com/getzlab/rnaseqc/releases/download/v${version}/rnaseqc.v${version}.linux.gz \


gzip -d rnaseqc.v${version}.linux.gz
mv rnaseqc.v${version}.linux rnaseqc
chmod +x rnaseqc

add_binary_path \
    getzlab \
    rnaseqc
