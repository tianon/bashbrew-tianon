#!/usr/bin/env bash

case "${BASHBREW_NAMESPACE:-}" in
	'' | tianon)
		export BASHBREW_LIBRARY="$dir/library" BASHBREW_NAMESPACE='tianon'
		;;
	*)
		export BASHBREW_LIBRARY="$dir/$BASHBREW_NAMESPACE"
		;;
esac
