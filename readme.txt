=================================================================================

SETUP INSTRUCTIONS:

[1] In Overleaf, set the attached main.tex as your main document (Menu>MainDocument>main.tex). 
[2] Add the following lines to your New/main.tex file after \usepackage{graphicx}

\graphicspath{{New/}}
\let\biblio\bibliography
\let\bibsty\bibliographystyle
\renewcommand{\bibliography}[1]{\expandafter\biblio{New/#1}}
\renewcommand{\bibliographystyle}[1]{\expandafter\bibsty{New/#1}}

[3] Repeat this for the Old/main.tex file but replacing "New/" with "Old/".
[4] Change all your \input{...} calls for \input{Old/...} & \input{New/...} within your Old/ & New/ folders. AFAIK, this must be done case by case because a global redefinition of \input may cause a clash with latexpand and other packages.

At this point, the setup is done and you can proceed to modify the contents of the New/ folder.

=================================================================================
