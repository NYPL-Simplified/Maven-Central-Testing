#!/bin/sh

info()
{
  echo "firebase-login.sh: info: $1" 1>&2
}

NODE_MODULES_BIN=$(realpath node_modules/.bin) || exit 1
export PATH="${PATH}:${NODE_MODULES_BIN}"

exec firebase login:ci
