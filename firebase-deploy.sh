#!/bin/sh

info()
{
  echo "firebase-deploy.sh: info: $1" 1>&2
}

fatal()
{
  echo "firebase-deploy.sh: fatal: $1" 1>&2
  exit 1
}

NODE_MODULES_BIN=$(realpath node_modules/.bin) ||
  fatal "node modules are not installed"

export PATH="${PATH}:${NODE_MODULES_BIN}"

if [ -z "${_FIREBASE_TOKEN}" ]
then
  fatal "\$_FIREBASE_TOKEN is unset"
fi

changelog write-plain > changes.txt ||
  fatal "could not write changelog"

exec firebase appdistribution:distribute \
  "./org.librarysimplified.testing.app/build/outputs/apk/release/org.librarysimplified.testing.app-release-unsigned.apk" \
  --token "${_FIREBASE_TOKEN}" \
  --release-notes-file changes.txt \
  --app "1:1076330259269:android:8cb4dc8d0e14bc32d3d42c" \
  --groups "crash-test-dummies"
