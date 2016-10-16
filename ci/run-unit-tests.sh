#!/bin/bash
set -eux -o pipefail
env

VENV=$(mktemp -d)
virtualenv $VENV
set +ux
echo "* source $VENV/bin/activate"
source $VENV/bin/activate
set -ux
pip install nose
cd source-code
nosetests -v
