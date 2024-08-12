#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    "suhrig" \
    "arriba" \
    "2.4.0" \
    "a5173f44195d7f864aab95972d0cc3da85671c4b7e602e5a4e1a4fc143810e4a" \
    "https://github.com/suhrig/arriba/releases/download/v2.4.0/arriba_v2.4.0.tar.gz" \
    "arriba_v2.4.0" \
    "arriba_v2.4.0.tar.gz"

rm Dockerfile
rm Makefile
rm -r database
rm download_references.sh
rm draw_fusions.R
rm run_arriba.sh
rm -r test

add_binary_path \
    suhrig \
    arriba
