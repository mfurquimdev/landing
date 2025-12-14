#!/bin/env bash

filename="${1}"
echo "${filename}"

extension="${filename##*.}"
echo "${extension}"

basename="${filename%.*}"
echo "${basename}"

typst compile ${basename}.typ
mupdf "${basename}.pdf" &
fd "${basename}.typ" | entr -ns "typst compile ${basename}.typ && pkill -HUP mupdf"
