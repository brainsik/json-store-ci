#!/bin/bash
set -ex -o pipefail
env

echo $(cat version/version)
cp version/version source-code/json_store/version.txt
cd source-code
python setup.py sdist
mv dist/* ../source-package
