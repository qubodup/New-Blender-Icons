#!/bin/bash

# using git Bash on Windows
# requires imagemagick (add to PATH) and Inkscape (std location) installed

for i in *svg; do
	"C:\Program Files\Inkscape\inkscape.exe" "$i" -e "${i%svg}png"
	magick convert -background transparent "${i%svg}png" -define icon:auto-resize "${i%svg}ico"
done
