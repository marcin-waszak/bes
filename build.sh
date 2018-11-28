#!/bin/sh
echo -e "\n## First stage"
xelatex -halt-on-error main

echo -e "\n## Biber"
biber main

echo -e "\n## Second stage"
xelatex -halt-on-error main

echo -e "\n## Third stage"
xelatex -halt-on-error main
