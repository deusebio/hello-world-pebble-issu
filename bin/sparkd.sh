#!/bin/bash

function finish {
  if [ $? -ne 0 ]
  then
    kill -9 1
    sleep 1
  fi
}
trap finish EXIT

FLAVOUR=$1

echo "Running script with ${FLAVOUR} flavour"

case "${FLAVOUR}" in
  driver|executor)
    pushd /opt/spark/bin
    ./entrypoint.sh "$@"
    ;;
  *)
    exit 1
    ;;  
esac
