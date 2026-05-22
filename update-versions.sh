#!/bin/bash
set -exuo pipefail

json=$(cat meta.json)
command=$(jq -re '.version__command' <<< "${json}")
version=$(eval "${command}")
jq --sort-keys \
    --arg version "${version}" \
    '.version = $version' <<< "${json}" | tee meta.json
