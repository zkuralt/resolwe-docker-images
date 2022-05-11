#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

# Python2 pip is no longer supported in Ubuntu 20.04 and bootstrapping
# script has to be used to install pip, setuptools, and wheel
download_and_verify \
    bootstrap \
    pypa \
    2.7 \
    40ee07eac6674b8d60fce2bbabc148cf0e2f1408c167683f110fd608b8d6f416 \
    https://bootstrap.pypa.io/pip/\${version}/get-pip.py

python2 /opt/bootstrap/pypa/get-pip.py
rm -rf /opt/bootstrap
