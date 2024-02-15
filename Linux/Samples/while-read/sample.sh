#!/bin/bash

set -ue

while read line; do
  echo "$line"
done < <(find $(dirname $0) -name "*.sh")

echo -e "\n"

for line in $(dirname $0)/*.sh; do
  echo "$line"
done
