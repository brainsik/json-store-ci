#!/bin/bash
set -eux -o pipefail
env

export JSON_STORE_OFFICIAL_PACKAGE=true

BASEDIR=$PWD
cd $(mktemp -d)

virtualenv venv
set +ux
echo "* source venv/bin/activate"
source venv/bin/activate
set -ux
pip install nose
pip install $BASEDIR/package/json-store-*.tar.gz
mv $BASEDIR/source-code/tests .
nosetests -v tests
