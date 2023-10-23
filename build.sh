#!/usr/bin/env bash

set -e

unset \
  versions \
  opted_versions \
  opts \
;

for e in "$@"; do
  if [[ -d versions/$e ]]; then
    opted_versions="$opted_versions $e"
  else
    opts="$opts $e"
  fi
done

if [[ -n $opted_versions ]]; then
  versions=$opted_versions
else
  versions=`/bin/ls versions`
fi

for f in $versions; do
  docker compose build alpinode-$f $opts
done

