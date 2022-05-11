#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

# Table with information about ERCC spike-ins
# Original file is available at https://tools.thermofisher.com/content/sfs/manuals/cms_095046.txt

download_and_verify \
    resolwebio \
    assets \
    ERCC_table \
    5151b394332477301851404d37b907cb6f27c9aaa2569e288531a839d6ca2b3b \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/43374488699a9d9dd6f158152bf9499b141824fe/resolwe_docker_images/rnaseq/downloaded_assets/ERCC_table.txt \
    '' \
    ERCC_table.txt
