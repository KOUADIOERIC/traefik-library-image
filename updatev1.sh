#!/usr/bin/env bash

set -e
set -u # Exit on error when uninitialized variable
echo " ttt "
if [ $# -eq 0 ] ; then
	echo "Usage: ./updatev1.sh <traefik tag or branch>"
	exit
fi

SCRIPT_DIRNAME_ABSOLUTEPATH="$(cd "$(dirname "$0")" && pwd -P)"

echo "$1" > ./version

bash "${SCRIPT_DIRNAME_ABSOLUTEPATH}/update.sh" "$1"
