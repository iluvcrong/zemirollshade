#!/bin/bash
set -e

CONFIG_PATH=/config/config.json

# copy config.yml
[[ -f $CONFIG_PATH ]] && \
  { echo "Using existing config.json"; } || \
    { echo "New config.json from template"; cp /usr/src/app/config.json $CONFIG_PATH; }

python3 rollshade.py $CONFIG_PATH
