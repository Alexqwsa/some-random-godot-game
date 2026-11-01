#!/bin/sh
printf '\033c\033]0;%s\a' some warioware game
base_path="$(dirname "$(realpath "$0")")"
"$base_path/some warioware game.x86_64" "$@"
