#!/bin/bash
set -euo pipefail

TESTS=./examples/video/exercise*
for f in $TESTS
do
  echo "========== Running $f =========="
    ruby -I lib $f
done
