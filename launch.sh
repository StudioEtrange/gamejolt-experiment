#!/bin/bash
_CURRENT_FILE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_CURRENT_RUNNING_DIR="$( cd "$( dirname "." )" && pwd )"
. "${_CURRENT_FILE_DIR}/stella-link.sh" include

cd "$STELLA_APP_WORK_ROOT/gamejolt"
yarn run dev
