#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    broadinstitute \
    collapse_annotation \
    1.0.0 \
    c96c4ff897f344774b057133556a862549a85bca8e67433b5e41cf1d7d881e2b  \
    https://raw.githubusercontent.com/broadinstitute/gtex-pipeline/9c6a1c38bc69733c2d7f5da28be3d09fde269406/gene_model/collapse_annotation.py \


chmod +x collapse_annotation.py

add_binary_path \
    broadinstitute \
    collapse_annotation
