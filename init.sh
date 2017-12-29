#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
	echo "This script can only be run on Mac OSX"
	exit 1
fi

echo "Starting init script..."

echo "First, we'll install all of our brew dependencies... "
#might be ruby. yarn. node in the near future 
brew update
brew install python

echo "Next we'll get the deploy dependencies that we need..."
#might be deploy dependency in the near future

echo "Next, we'll install all of our python packages and set up our python environment"
echo "Hold tight we're almost done!"
pip install -r requirements.txt
virtualenv ~/lqd_virt_env

echo "Last, we'll install all of the service level dependencies"
declare -a arr=("crawler")

NEWSHUB_TOP_DIR=$(pwd)
for service in "${arr[@]}"
do
    echo "Installing dependencies for $service..."
    cd "${NEWSHUB_TOP_DIR}/${service}"
    sh init.sh
done
cd "${NEWSHUB_TOP_DIR}"

