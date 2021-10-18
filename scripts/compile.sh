#!/bin/sh

# Navigate to source directory
cd /data || exit

# Create directory if it doesn't exist
if [ ! -d "/build" ]; then
  mkdir /build
fi

# Compile document
pdflatex -output-directory=/build main
biber --input-directory=/build --output-directory=/build main
pdflatex -output-directory=/build main
pdflatex -output-directory=/build main
