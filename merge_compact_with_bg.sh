#!/bin/bash

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
    -dFirstPage=2 -dLastPage=2 \
    -sPAPERSIZE=a4 -dFIXEDMEDIA -dPDFFitPage -dCompatibilityLevel=1.4 \
    -sOutputFile=tmp.pdf ./Blank.pdf

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER \
    -sOutputFile=compact_general_2sided.pdf ./compact_general.pdf ./tmp.pdf

rm tmp.pdf
