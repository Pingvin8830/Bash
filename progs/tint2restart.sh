#!/bin/bash

set -x 

PID=$(ps -ef | grep tint2$ | grep -v grep | sed "s/[ ]* / /g" | cut -d' ' -f2)
if [ -n "${PID}" ]; then
  kill ${PID}
  PID=$(ps -ef | grep tint2$ | grep -v grep | sed "s/[ ]* / /g" | cut -d' ' -f2)
  if [ -z "${PID}" ]; then
    tint2 &
  fi
fi

