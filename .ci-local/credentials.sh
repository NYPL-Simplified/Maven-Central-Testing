#!/bin/bash

#------------------------------------------------------------------------
# Utility methods
#

fatal()
{
  echo "credentials-local.sh: fatal: $1" 1>&2
  exit 1
}

info()
{
  echo "credentials-local.sh: info: $1" 1>&2
}

#------------------------------------------------------------------------
#

info "GITHUB_RUN_ID ${GITHUB_RUN_ID}"
info "GITHUB_RUN_NUMBER ${GITHUB_RUN_NUMBER}"
