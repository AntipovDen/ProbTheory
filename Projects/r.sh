#!/bin/bash

NAME=projects-description

if [[ "$1" == "clean" ]];
then
    rm -f ${NAME}.pdf *.cls *.sty *.bst *.aux *.auxlock *.toc *.blg *.bbl *.log *.out *.fdb_latexmk *.fls *.synctex.gz
else
    pdflatex --shell-escape ${NAME}.tex
    bibtex ${NAME}
    pdflatex --shell-escape ${NAME}.tex
    pdflatex --shell-escape ${NAME}.tex
fi
