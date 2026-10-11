#!/usr/bin/env bash

# Stricter shell handling
set -euo pipefail

if ! (command -v zip &>/dev/null); then
  echo "ZIP not found!"
  echo "Make sure you have the 'zip' command installed."
  exit 1
fi

# Setup functions
IDENT_LEVEL=0

function IndentFurther {
  IDENT_LEVEL=$((IDENT_LEVEL + 1))
}

function IndentBack {
  IDENT_LEVEL=$((IDENT_LEVEL - 1))
}

function Logger {
  printf "%$((IDENT_LEVEL * 2))s%s\n" "" "$1"
}

SRC="${PWD}/src"
BUILD="${PWD}/build"
DIST="${PWD}/dist"

function CleanBuild {
  rm -r "${BUILD}" || true
  rm -r "${DIST}" || true
}

function CopyDirectory {
  local SRC_TARGET="$1"
  local DEST_TARGET="$2"
  local SRC_DIR
  local SRC_PARENT

  SRC_DIR="$(basename -- "${SRC_TARGET}")"
  SRC_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${SRC_TARGET}")")")"
  local SRC_AND_PARENT="${SRC_PARENT}/${SRC_DIR}"

  if [[ -d "${SRC_TARGET}" ]]; then
    Logger "Copying directory over ${SRC_AND_PARENT}"
    cp -r "${SRC_TARGET}" "${DEST_TARGET}"
  else
    Logger "Source directory ${SRC_AND_PARENT} does not exist or is not a directory - can't copy."
  fi
}

function CopyDirectoryContents {
  local SRC_TARGET="$1"
  local DEST_TARGET="$2"
  local SRC_DIR
  local SRC_PARENT
  local DEST_DIR
  local DEST_PARENT

  SRC_DIR="$(basename -- "${SRC_TARGET}")"
  SRC_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${SRC_TARGET}")")")"
  DEST_DIR="$(basename -- "${DEST_TARGET}")"
  DEST_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${DEST_TARGET}")")")"
  local SRC_AND_PARENT="${SRC_PARENT}/${SRC_DIR}"
  local DEST_AND_PARENT="${DEST_PARENT}/${DEST_DIR}"

  if [[ -d "${SRC_TARGET}" ]]; then
    Logger "Copying over contents of ${SRC_AND_PARENT} to ${DEST_AND_PARENT}"
    mkdir -p "${DEST_TARGET}"
    cp -r "${SRC_TARGET}/." "${DEST_TARGET}/"
  else
    Logger "Source directory ${SRC_AND_PARENT} does not exist or is not a directory - can't copy."
  fi
}

function MakePK3 {
  local SRC_TARGET="$1"
  local DEST_TARGET="$2"
  local SRC_DIR
  local SRC_PARENT
  local DEST_DIR
  local DEST_PARENT

  SRC_DIR="$(basename -- "${SRC_TARGET}")"
  SRC_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${SRC_TARGET}")")")"
  DEST_DIR="$(basename -- "${DEST_TARGET}")"
  DEST_PARENT="$(basename -- "$(dirname -- "$(realpath -- "${DEST_TARGET}")")")"
  local SRC_AND_PARENT="${SRC_PARENT}/${SRC_DIR}"
  local DEST_AND_PARENT="${DEST_PARENT}/${DEST_DIR}"

  IndentFurther
  Logger "Moving to ${SRC_AND_PARENT}"
  cd "${SRC_TARGET}"

  IndentFurther
  Logger "Making ${DEST_AND_PARENT}"
  zip "${DEST_TARGET}" -r . &> /dev/null
  IndentBack

  cd - &> /dev/null
  IndentBack
}

# Actual work

Logger "Cleaning up..."

CleanBuild

Logger "Starting build setup..."

mkdir -p "${BUILD}"
mkdir -p "${DIST}"

SRC_BASE="$(realpath "${SRC}/base")"
SRC_GRADIENT="$(realpath "${SRC}/gradient")"
SRC_NAMES="$(realpath "${SRC}/names")"
SRC_NAMES_GRADIENT="$(realpath "${SRC}/names_gradient")"

BUILD_BASE="$(realpath "${BUILD}/base")"
BUILD_GRADIENT="$(realpath "${BUILD}/gradient")"
BUILD_NAMES="$(realpath "${BUILD}/names")"
BUILD_NAMES_GRADIENT="$(realpath "${BUILD}/names_gradient")"

DIST_BASE="$(realpath "${DIST}/base.pk3")"
DIST_GRADIENT="$(realpath "${DIST}/gradient.pk3")"
DIST_NAMES="$(realpath "${DIST}/names.pk3")"
DIST_NAMES_GRADIENT="$(realpath "${DIST}/names_gradient.pk3")"

IndentFurther

# "Base" is reused for all four variants
# since files are deduplicated
CopyDirectory "${SRC_BASE}" "${BUILD_BASE}"
CopyDirectory "${SRC_BASE}" "${BUILD_GRADIENT}"
CopyDirectory "${SRC_BASE}" "${BUILD_NAMES}"
CopyDirectory "${SRC_BASE}" "${BUILD_NAMES_GRADIENT}"

# "Gradient" is used for itself and "Names Gradient"
# again, because files are deduplicated
CopyDirectoryContents "${SRC_GRADIENT}" "${BUILD_GRADIENT}"
CopyDirectoryContents "${SRC_GRADIENT}" "${BUILD_NAMES_GRADIENT}"

# And finally "Names" and "Names Gradient" variants
CopyDirectoryContents "${SRC_NAMES}" "${BUILD_NAMES}"
CopyDirectoryContents "${SRC_NAMES_GRADIENT}" "${BUILD_NAMES_GRADIENT}"

IndentBack

Logger "Bundling for distribution..."

MakePK3 "${BUILD_BASE}" "${DIST_BASE}"
MakePK3 "${BUILD_GRADIENT}" "${DIST_GRADIENT}"
MakePK3 "${BUILD_NAMES}" "${DIST_NAMES}"
MakePK3 "${BUILD_NAMES_GRADIENT}" "${DIST_NAMES_GRADIENT}"

Logger "Finished building mod!"
