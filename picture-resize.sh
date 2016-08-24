#!/bin/bash
# this script uses ImageMagic https://imagemagick.org/
# install on mac: brew install imagemagick

for file in *.png
  do
    convert $file -resize 150x150 150-$file;
    echo "converting $file"
done
