$pdflatex = "
latexpand Old/main.tex > old.tex;
latexpand New/main.tex > new.tex;
latexdiff old.tex new.tex > diff.tex;
pdflatex -c %O diff.tex;
#pdflatex -c %O new.tex;
#pdflatex %O old.tex;
"

# Uncomment the last two lines if you want the pdfs (via LogsAndOutputFiles) of the latexpanded versions of the old and new main files. (This would take some time).
