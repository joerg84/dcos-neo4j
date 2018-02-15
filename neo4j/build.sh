#!/bin/bash
set -e

FRAMEWORK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR=$FRAMEWORK_DIR/build/distributions
PUBLISH_STEP=${1-none}
export REPO_NAME="$(basename $FRAMEWORK_DIR)"
export BUILD_BOOTSTRAP=no
export TOOLS_DIR=${FRAMEWORK_DIR}/tools
export CLI_DIR=${FRAMEWORK_DIR}/cli
export ORG_PATH=github.com/$REPO_NAME
${FRAMEWORK_DIR}/tools/build_framework.sh $PUBLISH_STEP $REPO_NAME $FRAMEWORK_DIR $BUILD_DIR/$REPO_NAME-scheduler.zip
