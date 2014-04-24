#!/bin/bash
# Clean LaTeX unnecessary files

echo "Script made by Jason Liu, March 2014"
echo ""

orig="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Running in: $orig"
echo ""

folder=Paper/

cd $folder
rm -f *.aux *.log *.synctex.gz

