#!/bin/bash
set -Eeou pipefail

dir="$(dirname "$BASH_SOURCE")"
cd "$dir"

if [ "$#" -eq 0 ]; then
	set -- --all
fi

set -x
./pull-from.sh "$@"
./build.sh "$@"
./bashbrew.sh --namespace '' list --uniq "$@" | xargs -n1 -P10 -r ./push.sh
