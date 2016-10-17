#!/bin/bash
set -ex -o pipefail
env

BASEDIR="$PWD"
OUTPUT="$BASEDIR/release-data"

cd $(mktemp -d)
tar xfz ${BASEDIR}/package/json-store-*.tar.gz
cd json-store-*
python -c 'import setup; print setup.package_info["name"]' > ${OUTPUT}/name
python -c 'import setup; print setup.package_info["version"]' > ${OUTPUT}/tag

cd $BASEDIR/source-code
git rev-parse HEAD > ${OUTPUT}/commitish
