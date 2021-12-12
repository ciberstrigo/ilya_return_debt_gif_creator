#!/bin/bash
source "$(dirname "$0")"/render.sh

read_sources_dir () {
  source_directory=$1
  destination_directory=$2

  # shellcheck disable=SC1073
  find "$source_directory" -iname "*.*" | while read FILENAME;
  do
  render "$FILENAME" "${destination_directory}/$(basename "$FILENAME")"
  done
}

read_sources_dir "$1" "$2"
