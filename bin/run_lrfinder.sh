#!/usr/bin/env bash
set -e

catalyst-dl run \
    --config=./configs/lrfiner.yml \
    --logdir=${LOGDIR} --verbose

# docker trick
if [[ "$EUID" -eq 0 ]]; then
  chmod -R 777 ${LOGDIR}
fi
