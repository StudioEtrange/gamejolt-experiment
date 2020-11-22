#!/bin/bash
_CURRENT_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_CURRENT_RUNNING_DIR="$( cd "$( dirname "." )" && pwd )"
. "${_CURRENT_FILE_DIR}/stella-link.sh" include


cd "$STELLA_APP_ROOT"


$STELLA_API get_features

cd "$STELLA_APP_WORK_ROOT"
git clone https://github.com/gamejolt/gamejolt

cd "$STELLA_APP_WORK_ROOT/gamejolt"

git submodule init
git submodule update

yarn
