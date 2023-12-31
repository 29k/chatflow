#!/usr/bin/env bash
set -e

SRC_PACKAGE_JSON_TS_FILE='src/package-json.ts'

[ -f ${SRC_PACKAGE_JSON_TS_FILE} ] || {
  echo ${SRC_PACKAGE_JSON_TS_FILE}" not found"
  exit 1
}

cat <<_SRC_ > ${SRC_PACKAGE_JSON_TS_FILE}
/**
 * This file was auto generated from scripts/generate-version.sh
 */
export const packageJson = $(cat package.json)
_SRC_
