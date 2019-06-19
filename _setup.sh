#!/usr/bin/env bash

_dir="$(dirname "$BASH_SOURCE")"
: "${dir:=$_dir}"
case "${BASHBREW_NAMESPACE:-}" in
	'' | tianon)
		export BASHBREW_LIBRARY="$dir/library" BASHBREW_NAMESPACE='tianon'
		;;
	*)
		export BASHBREW_LIBRARY="$dir/$BASHBREW_NAMESPACE"
		;;
esac
