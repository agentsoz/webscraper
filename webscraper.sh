#!/usr/bin/env bash

# A simple web scraper that saves each URL specified in the input file
# (one URL per line) to a text file in the specified output directory.
# Author: Dhi Singh

basedir=$(dirname "$0")
database=$basedir/urls.txt
outdir=$basedir/outdir

mkdir -p $outdir

cat $database | while read url ; do
  filename=$(basename "$url" | tr -d '\n')
  echo "$filename.txt"
  wget -O - -o /dev/null $url | html2text -width 99999 -o $outdir/$filename.txt
done
