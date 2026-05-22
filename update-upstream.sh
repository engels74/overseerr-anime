#!/bin/bash
set -exuo pipefail

json=$(cat meta.json)
command=$(jq -re '.upstream_tag_sha__command' <<< "${json}")
upstream_tag_sha=$(eval "${command}")
jq --sort-keys \
    --arg upstream_tag_sha "${upstream_tag_sha}" \
    '.upstream_tag_sha = $upstream_tag_sha' <<< "${json}" | tee meta.json
