#!/bin/sh
# 
# Convert a cp936 encoded file to utf-8 encoded, 
# it will replace the original file.
# mainly used for convert windows txt file.
#
# Author: Ming Chen
#
#
# Usage: cp936toutf8.sh file1 file2 ...
#

while [ $# -gt 0 ];
do
  infile=$1
  outfile="${infile}.utf-8"
  iconv -f cp936 -t utf-8 < $infile > $outfile
  mv -f "$outfile" "$infile"
shift
done

