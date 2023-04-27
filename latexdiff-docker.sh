#!/bin/bash

OLD_TEX_FILE="$(realpath "$1")"
NEW_TEX_FILE="$(realpath "$2")"
DIFF_TEX_FILE="$(basename "$3")"
WORKDIR="$(dirname "$OLD_TEX_FILE")"

if [ -z "$OLD_TEX_FILE" ] || [ -z "$NEW_TEX_FILE" ] || [ -z "$DIFF_TEX_FILE" ]; then
  echo "Usage: $0 <old.tex> <new.tex> <diff.tex>"
  exit 1
fi

docker run --rm -v "${WORKDIR}:/workdir" -w /workdir latexdiff-docker latexdiff "$(basename "$OLD_TEX_FILE")" "$(basename "$NEW_TEX_FILE")" > "${WORKDIR}/${DIFF_TEX_FILE}"
