#!/bin/bash
set -euo pipefail

if [ -z "${MUX_TOKEN_ID:-}" ]
then
      echo "MUX_TOKEN_ID not set"
      exit 255
fi

if [ -z "${MUX_TOKEN_SECRET:-}" ]
then
      echo "MUX_TOKEN_SECRET not set"
      exit 255
fi

TESTS=./examples/video/exercise*
for f in $TESTS
do
  echo "========== Running $f =========="
    ruby -I lib $f
done
