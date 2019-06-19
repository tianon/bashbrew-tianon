#!/bin/bash
set -Eeou pipefail

dir="$(dirname "$BASH_SOURCE")"
bashbrew="$dir/bashbrew.sh"

if [ "$#" -eq 0 ]; then
	set -- --all
fi

"$bashbrew" "$(basename "$0" '.sh')" "$@"
