#!/bin/bash
# this script uses ImageMagic https://imagemagick.org/
# install on mac: brew install imagemagick

read -p "Warning: Files will be overwritten! Continue? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
  then
      # do dangerous stuff
      for file in *.png
        do
          convert $file -resize 150x150 $file;
          echo "converting $file"
      done
  else
    echo "Abort by user"
fi
