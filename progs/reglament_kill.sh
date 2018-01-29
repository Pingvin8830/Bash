#!/bin/bash

PID=`ps -u $USER | sed "s/^[ ]*//" | grep reglament_talk | cut -f1 -d' '`
CMD=`ps -p $PID -o cmd`

notify-send "Убиваем процесс ${PID} ${CMD}"
kill $PID
