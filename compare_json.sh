#!/usr/bin/env bash

# Stricter shell handling
set -euo pipefail

if ! (command -v jq &>/dev/null); then
  echo "jqlang not found!"
  echo "Make sure you have the 'jq' command installed."
  exit 1
fi

if ! (command -v sed &>/dev/null); then
  echo "sed not found!"
  echo "Make sure you have the 'sed' command installed."
  exit 1
fi

FILE1=""
FILE2=""
FILE1_SET=false
FILE2_SET=false
TEMP1="$(mktemp)"
TEMP2="$(mktemp)"

while getopts ":1:2:" flag; do
  case "${flag}" in
  1)
    FILE1="$(realpath -- "${OPTARG}")"
    FILE1_SET=true
    ;;
  2)
    FILE2="$(realpath -- "${OPTARG}")"
    FILE2_SET=true
    ;;
  *) Usage ;;
  esac
done

if [[ $FILE1_SET != true || $FILE2_SET != true ]]; then
  echo "One of the JSON file was not provided, make sure to include both -1 <path to json> and -2 <path to json>"
  echo "Exiting."
  exit 1
fi

if ! [[ -e "${FILE1}" ]]; then
  echo "JSON file 1 does not exist. Exiting."
  exit 1
fi

if ! [[ -e "${FILE2}" ]]; then
  echo "JSON file 2 does not exist. Exiting."
  exit 1
fi

if [[ -d "${FILE1}" ]]; then
  echo "The provided JSON file 1 is a directory, not a file. Exiting."
  exit 1
fi

if [[ -d "${FILE2}" ]]; then
  echo "The provided JSON file 2 is a directory, not a file. Exiting."
  exit 1
fi

jq --sort-keys . "${FILE1}" > "${TEMP1}"
jq --sort-keys . "${FILE2}" > "${TEMP2}"
diff "${TEMP1}" "${TEMP2}" -u | sed -re '1,2 s/\t.*//' > comparison.diff
rm "${TEMP1}"
rm "${TEMP2}"
