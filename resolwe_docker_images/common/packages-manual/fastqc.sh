#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    babraham \
    fastqc \
    0.12.1 \
    5f4dba8780231a25a6b8e11ab2c238601920c9704caa5458d9de559575d58aa7 \
    http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v\${version}.zip \
    FastQC

chmod +x fastqc

add_binary_path \
    babraham \
    fastqc
