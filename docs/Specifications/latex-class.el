(require 'org)
(require 'ox-latex)

(add-to-list

 'org-latex-classes

 `("article"

   ,(concat
     "\\documentclass[11pt]{article}\n"
     "\\usepackage[utf8]{inputenc}\n"
     "\\usepackage[T1]{fontenc}\n"
     "\\usepackage{fixltx2e}\n"
     "\\usepackage{fullpage}\n"
     "\\usepackage{graphicx}\n"
     "\\usepackage{longtable}\n"
     "\\usepackage{float}\n"
     "\\usepackage{wrapfig}\n"
     "\\usepackage{rotating}\n"
     "\\usepackage[normalem]{ulem}\n"
     "\\usepackage{amsmath}\n"
     "\\usepackage{textcomp}\n"
     "\\usepackage{marvosym}\n"
     "\\usepackage{wasysym}\n"
     "\\usepackage{amssymb}\n"
     "\\usepackage{hyperref}\n"
     "%\\usepackage{mathpazo}\n"
     "\\renewcommand{\\familydefault}{\\sfdefault}\n"
     "\\usepackage{color}\n"
     "\\usepackage{enumerate}\n"
     "\\definecolor{bg}{rgb}{0.95,0.95,0.95}\n"
     "\\tolerance=1000\n"
     "[NO-DEFAULT-PACKAGES]\n"
     "[PACKAGES]\n"
     "[EXTRA]\n"
     "\\linespread{1.1}\n"
     "\\hypersetup{pdfborder=0 0 0}")

   ("\\section{%s}"       . "\\section*{%s}")
   ("\\subsection{%s}"    . "\\subsection*{%s}")
   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
   ("\\paragraph{%s}"     . "\\paragraph*{%s}")
   ("\\subparagraph{%s}"  . "\\subparagraph*{%s}")))
