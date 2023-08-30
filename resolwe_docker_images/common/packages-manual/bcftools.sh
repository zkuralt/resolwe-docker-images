#!/bin/bash -e

# Install bcftools from the GitHub repository

. /var/cache/build/packages-manual/common.sh

download_and_verify \
  samtools \
  bcftools \
  1.17 \
  01f75d8e701d85b2c759172412009cc04f29b61616ace2fa75116123de4596cc \
  https://github.com/samtools/bcftools/releases/download/\${version}/bcftools-\${version}.tar.bz2 \
  bcftools-\${version}

./configure --without-curses
make

shopt -s extglob
rm -rf !(bcftools)

add_binary_path \
  samtools \
  bcftools