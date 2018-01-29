#!/bin/bash

if [ `uname -n` == 'KsushaNotebook' ]; then
  optirun chromium
else
  chromium
fi
