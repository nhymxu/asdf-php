#!/usr/bin/env bash

set -euo pipefail

TOOL_NAME="asdf-php"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
	exit 1
}

check_support_platform() {
    local operating_system=$(uname -a)
    if [[ $operating_system =~ "Darwin" ]]; then
        return
    fi

    if [[ $operating_system =~ "Linux" ]]; then
        return
    fi

    fail "$TOOL_NAME only support Linux & macOS."
}
