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

info "installing node modules"
npm install firebase-tools || fatal "could not install node modules"
