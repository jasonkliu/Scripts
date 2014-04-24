#!/bin/bash
# Rename files for use with Gaussian

# Finds name of file
echo "Script made by Jason Liu, January 2014"
echo ""

orig="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in: $orig"
echo ""

b=17

# Running files
# for i in $(seq -w 01 $b); # Old version, works for numbers > 10 only
for i in $(seq -f %02g $b); 
do
  echo "$i:"
  cp $i.com t$i.com 
  sed 's/hf\/3-21g/B3LYP\/6-311++G/g' t$i.com > $i.com
  echo ""
done

# Like `cat', but with header of filename to compare
tail +1 [^t]*.com > output.txt
tail +1 t*.com > output2.txt

echo "done"
