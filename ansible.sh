#!/bin/bash

set -e

# readarray -td "=", VER <<<"$1"; declare VER;
VERSION=$1
# VERSION=${VER[1]}
PYTHON3EXISTS=$(echo $(which python3))

if [[ $PYTHON3EXISTS == '' ]];
then
    echo 'Python3 does not exist';
    exit 127;
fi

PIPEXISTS=$(echo $(which pip))

if [[ $PIPEXISTS == '' ]];
then
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py --user
fi

if [[ $1 == '' ]];
then
    python3 -m pip install --user ansible
else
    python3 -m pip install --user ansible=$VERSION
fi

# add local to path
if [[ $(echo $PATH | egrep -w Library/Python/3.10/bin) == '' ]];
then
    chmod +x set-path.sh
    ./set-path.sh
fi
