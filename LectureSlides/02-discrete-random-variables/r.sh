#!/bin/bash


if [[ "$1" == "clean" ]];
then
    rm -f *.pdf *.cls *.sty *.bst *.aux *.auxlock *.toc *.blg *.bbl *.log *.out *.synctex.gz *.fls *.fdb_latexmk *.nav *.snm
else 

    pdflatex --shell-escape presentation.tex
    bibtex presentation
    pdflatex --shell-escape presentation.tex
    pdflatex --shell-escape presentation.tex
fi
