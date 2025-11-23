#!/usr/bin/env bash

set -eu

for pdf in *.pdf; do
    magick "$pdf" -resize 320 "$pdf.thumb.png"
    echo "[![$pdf]($pdf.thumb.png)]($pdf)"
done

