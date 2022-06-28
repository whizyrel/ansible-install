set -e

PYTHON3EXISTS=$(echo $(which python3))

if [[ $PYTHON3EXISTS == '' ]];
then
    echo 'Python3 does not exist';
    exit 127;
fi

python3 -m pip install --upgrade --user ansible
