#!/bin/bash
set -Eeou pipefail

dir="$(dirname "$BASH_SOURCE")"
source "$dir/_setup.sh"
[ -n "$BASHBREW_NAMESPACE" ]
[ -n "$BASHBREW_LIBRARY" ]
[ -d "$BASHBREW_LIBRARY" ]

exec bashbrew "$@"
