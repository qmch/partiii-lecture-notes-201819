#!/bin/bash

echo "Updating local files."
git pull

echo "Beginning PDF-making!"
#TeX the GR notes and copy them to the PDFs folder
cd ./michaelmas/gr
latexmk -pdf gr-notes-partiii.tex
latexmk -c
mv gr-notes-partiii.pdf ../../pdfs

#same thing for QFT
cd ../qft
latexmk -pdf qft-notes-partiii.tex
latexmk -c
mv qft-notes-partiii.pdf ../../pdfs

#and for Symmetries!
cd ../sfp
latexmk -pdf sfp-notes-partiii.tex
latexmk -c
mv sfp-notes-partiii.pdf ../../pdfs

echo "PDFs made. Pushing to the remote."
#finally, return to the home directory, git add, and git commit.
cd ../.. #to the main directory
git add . #add all the updated files
git commit -m "PDFs updated! See last commit message(s) for details."
git push
echo "autopdf complete."
