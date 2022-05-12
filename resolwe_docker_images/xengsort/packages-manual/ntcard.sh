#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    bcgsc \
    ntCard \
    1.2.2 \
    bace4e6da2eb8e59770d38957d1a916844071fb567696994c8605fd5f92b5eea \
    https://github.com/bcgsc/ntCard/releases/download/\${version}/ntcard-\${version}.tar.gz \
    ntcard-\${version}

./configure
make

shopt -s extglob
rm -rf !(ntcard|nthll)

add_binary_path \
    bcgsc \
    ntCard
