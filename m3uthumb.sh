#!/bin/bash

cat $1 | grep -v EXT | while read line; do
  name=`echo $line | sed 's/^.*\///g; s/:.*//g;'`;
  echo -n "Processing $name ...";
# ffmpeg -i $line -f image2 -vframes 1 -y $name.jpg &> /dev/null;
  echo " done";
done

