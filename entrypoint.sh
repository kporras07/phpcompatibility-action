#!/bin/bash

cd $GITHUB_ACTION_PATH

echo "TEST VERSIONS: $TEST_VERSIONS"
echo "PATHS: $PATHS"

composer install

export PATH=$PATH:$GITHUB_ACTION_PATH/vendor/bin

./vendor/bin/phpcs --standard=PHPCompatibility --runtime-set testVersion $TEST_VERSION $PATHS
