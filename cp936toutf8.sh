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

if [ $# -lt 1 ]; then
  echo "Usage: $0 file1 file2 ..."
  exit 1
fi

while [ $# -gt 0 ];
do
  infile=$1
  outfile="${infile}.utf-8.$$"

  # -c     When this option is given, characters that cannot be converted are silently discarded,
  #        instead of leading to a conversion error.
  iconv -c -f cp936 -t utf-8 < $infile > $outfile
  ret=$?
  if [ $ret -eq 0 ]; then
    if [ -d "$HOME/.Trash" ]; then
      mv -f "$infile" "$HOME/.Trash/"
    fi
    mv -f "$outfile" "$infile"
  else
    echo "Error: Failed to convert $infile to utf-8. iconv exit code: $ret"
  fi

  shift
done
