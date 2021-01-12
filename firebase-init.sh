#!/bin/sh

info()
{
  echo "firebase-setup.sh: info: $1" 1>&2
}

fatal()
{
  echo "firebase-setup.sh: fatal: $1" 1>&2
  exit 1
}

NODE_MODULES_BIN=$(realpath node_modules/.bin) ||
  fatal "node modules are not installed"

export PATH="${PATH}:${NODE_MODULES_BIN}"

if [ -z "${_FIREBASE_TOKEN}" ]
then
  fatal "\$_FIREBASE_TOKEN is unset"
fi

firebase apps:sdkconfig --project simplyabc-f1f0a --token "${_FIREBASE_TOKEN}" > firebase.json.tmp ||
  fatal "could not fetch app configuration"

mv firebase.json.tmp firebase.json ||
  fatal "could not overwrite app configuration"
