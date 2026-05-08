#!/bin/bash
set -e

output=$(bash app.sh)

echo "$output"

if [[ "$output" == *"Hello from Jenkins CI pipeline!"* ]]; then
  echo "Test passed"
else
  echo "Test failed"
  exit 1
fi