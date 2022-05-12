#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    genomeinformatics \
    xengsort \
    1.1.0 \
    5da09338889218e2199bc8578217252c0717e0c07532078d1481c12d2ce28482 \
    https://gitlab.com/genomeinformatics/xengsort/-/archive/\${version}/xengsort-\${version}.tar.gz \
    xengsort-\${version}

# Cleanup redundant files.
XENG_FILES="/opt/genomeinformatics/xengsort"
rm -rf $XENG_FILES/old $XENG_FILES/tests
rm $XENG_FILES/environment.yml $XENG_FILES/requirements.txt $XENG_FILES/Snakefile

# Install Xengsort python package.
pip3 install -e $XENG_FILES
