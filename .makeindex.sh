#!/bin/bash

# assemble a markdown directory index
echo "# PaymentRequest test/demo/example pages and resources"
echo ""

for filepath in `find -maxdepth 1 -mindepth 1| grep -v '/\.' | grep -v '/index\.' | sort`; do
  path=`basename "$filepath"`
  if [ -f $filepath ]
  then
  echo "*  [$path]($path)"
  # could output directories but as I don't plan to create indices all the way down lets not
  #else
  #echo "*  &#128193; [$path]($path)"
  fi
done
