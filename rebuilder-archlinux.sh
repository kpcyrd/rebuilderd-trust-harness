#!/bin/sh
#set -xe
#NOCHECK=1 archlinux-repro -o "${REBUILDERD_OUTDIR}" -- "${1}"
cp "${1}" "${REBUILDERD_OUTDIR}"
