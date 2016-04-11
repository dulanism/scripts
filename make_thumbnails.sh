#!/bin/bash
#This makes a directory containing thum bnails of all the jpegs in the current dir.
mkdir thumbnails
cp *.jpg thumbnails
cd thumbnails
mogrify -resize 400x300 *.jpg

