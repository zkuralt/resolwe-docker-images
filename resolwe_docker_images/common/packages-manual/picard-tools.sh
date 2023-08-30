#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    broadinstitute \
    picard-tools \
    3.1.0 \
    ea79ca6279a5e818cb6fa68a3476dde799c7ea03ffe52a26a3ca68c71ef28559 \
    https://github.com/broadinstitute/picard/releases/download/\${version}/picard.jar

echo 'alias picard-tools="java -jar /opt/broadinstitute/picard-tools/picard.jar"' >> /etc/profile