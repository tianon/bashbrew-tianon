#!/bin/bash
set -Eeou pipefail

dir="$(dirname "$BASH_SOURCE")"
bashbrew="$dir/bashbrew.sh"
source "$dir/_setup.sh"

if [ "$#" -eq 0 ]; then
	set -- --all
fi

"$bashbrew" cat --format '
	{{- range .Entries -}}
		{{ $.DockerFroms . | join "\n" }}
		{{ "\n" }}
	{{- end -}}
' "$@" \
	| sort -u \
	| grep -vE "^(scratch|$BASHBREW_NAMESPACE/.+)(:|\$)" \
	| xargs -n1 -P10 -rt docker pull
