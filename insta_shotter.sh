#!/usr/bin/env bash

# Stricter shell handling
set -euo pipefail

if ! (command -v convert &>/dev/null); then
  echo "ImageMgick not found."
  echo "Make sure you have the 'convert' command installed."
  exit 1
fi

INPUT_DIR=""
OUTPUT_DIR=""
INPUT_DIR_SET=false
OUTPUT_DIR_SET=false
INPUT_DOES_NOT_EXIST=false
OUTPUT_DOES_NOT_EXIST=false
INPUT_DIR_NAME_SET=false
OUTPUT_DIR_NAME_SET=false

function Usage {
  echo "Usage: ${0} -i <path to screenshot directory> -o <path to output directory>"
  echo ""
  echo "  Screenshots must be in sequentially numbered format for intended results!"
  echo "  Script accepts any resolution, as long as it is 1920x1080."
  echo ""
  exit 1
}

while getopts ":i:o:" flag; do
  case "${flag}" in
  i)
    INPUT_DIR="$(realpath -- "${OPTARG}")"
    INPUT_DIR_SET=true
    ;;
  o)
    OUTPUT_DIR="$(realpath -- "${OPTARG}")"
    OUTPUT_DIR_SET=true
    ;;
  *) Usage ;;
  esac
done

if [[ $INPUT_DIR_SET == false || $OUTPUT_DIR_SET == false ]]; then
  Usage
fi

if ! [[ -d "${INPUT_DIR}" ]]; then
  echo "Input folder not found, make sure it exists."
  echo "You provided: ${INPUT_DIR}"
  INPUT_DOES_NOT_EXIST=true
fi

if ! [[ -d "${OUTPUT_DIR}" ]]; then
  echo "Output folder not found, make sure it exists."
  echo "You provided: ${OUTPUT_DIR}"
  OUTPUT_DOES_NOT_EXIST=true
fi

if [[ $INPUT_DOES_NOT_EXIST == true || $OUTPUT_DOES_NOT_EXIST == true ]]; then
  exit 1
fi

if [[ "${INPUT_DIR,,}" != "input" ]]; then
  echo "Input directory is not named 'input'."
  echo "Directory's name is: '${INPUT_DIR}'."
fi

if [[ "${OUTPUT_DIR,,}" != "output" ]]; then
  echo "Output directory is not named 'output'."
  echo "Directory's name is: '${OUTPUT_DIR}'."
fi

if [[ $INPUT_DIR_NAME_SET == true || $OUTPUT_DIR_NAME_SET == true ]]; then
  exit 1
fi

echo "Welcome to the Screenshoter Auto 9000."
echo "This script is terrible!"
echo "You have selected the following directories as the 'input' and 'output' of your screenshots:"
echo "  * Input: ${INPUT_DIR}" # <- What the actual &$#! is this syntax
echo "  * Output: ${OUTPUT_DIR}"
echo ""

rm "${OUTPUT_DIR}"/* -f

for file in "${INPUT_DIR}"/*.png; do
  BASENAME="$(basename -- "${file}")"
  convert "${file}" -crop 1920x280+0+800 +repage "${OUTPUT_DIR}/_${BASENAME}"
done

convert "${OUTPUT_DIR}/_*.png" -append "${OUTPUT_DIR}/COMBINED.png"

echo "Finished!"
