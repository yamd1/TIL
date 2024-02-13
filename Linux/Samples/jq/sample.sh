#!/bin/bash

set -ue

PARSED_JSON="$(jq -f sample.jq foods.json)"
echo $PARSED_JSON
