#!/bin/bash

echo "Updating local files."
git pull

echo "Beginning PDF-making!"
#TeX the GR notes and copy them to the PDFs folder
#cd ./michaelmas/gr
#latexmk -pdf gr-notes-partiii.tex
#latexmk -c
#mv gr-notes-partiii.pdf ../../pdfs

#same thing for QFT
#cd ../qft
#latexmk -pdf qft-notes-partiii.tex
#latexmk -c
#mv qft-notes-partiii.pdf ../../pdfs

#and for Symmetries!
#cd ../sfp
#latexmk -pdf sfp-notes-partiii.tex
#latexmk -c
#mv sfp-notes-partiii.pdf ../../pdfs

#return to home directory
#cd ../..

#move to lent term and TeX the AQFT notes
cd ./lent/aqft
latexmk -pdf aqft-notes-partiii.tex
latexmk -c
mv aqft-notes-partiii.pdf ../../pdfs

#black holes
cd ../bh
latexmk -pdf bh-notes-partiii.tex
latexmk -c
mv bh-notes-partiii.pdf ../../pdfs

#quantum information
cd ../qi
latexmk -pdf qi-notes-partiii.tex
latexmk -c
mv qi-notes-partiii.pdf ../../pdfs

#standard model
cd ../sm
latexmk -pdf sm-notes-partiii.tex
latexmk -c
mv sm-notes-partiii.pdf ../../pdfs

#and string theory
cd ../str
latexmk -pdf str-notes-partiii.tex
latexmk -c
mv str-notes-partiii.pdf ../../pdfs

echo "PDFs made. Pushing to the remote."
#finally, return to the home directory, git add, and git commit.
cd ../.. #to the main directory
git add . #add all the updated files
git commit -m "PDFs updated! See last commit message(s) for details."
git push
echo "autopdf complete."
