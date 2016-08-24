#!/bin/bash
# this script uses ImageMagic https://imagemagick.org/
# install on mac: brew install imagemagick

# read -p "Enter the maximum width: " -s width
# echo
# read -p "Enter the maximum height: " -s height
# echo
read -p "Warning: Files will be overwritten! Continue? (y/n) " -n 1 -r
echo    # (optional) move to a new line

if [[ $REPLY =~ ^[Yy]$ ]]
  then
    for file in *.png
      do
        # convert $file -resize $width x $height $file;
        convert $file -resize 150x150 $file;
        echo "converting $file"
    done
  else
    echo "Abort by user"
fi
