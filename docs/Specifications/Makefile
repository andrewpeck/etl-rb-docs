all: pdf md

pdf: rb-specs.pdf module-specs.pdf

md: rb-specs.md module-specs.md

%.md: %.org
	emacs -Q --batch \
	--eval "(progn \
			(require 'org) \
      (require 'ox-md nil t) \
			(find-file \"$(patsubst %.md,%.org,$@)\") \
      (org-export-to-file 'md (concat (file-name-base) \".md\")))"

%.pdf: %.org
	emacs -Q --batch --eval "(progn \
			(require 'org) \
			(require 'ox-latex) \
			(load \"$(shell pwd)/latex-class.el\") \
			(find-file \"$(patsubst %.pdf,%.org,$@)\") \
			(org-export-to-file 'latex (concat (file-name-base) \".tex\")))"
	pdflatex $(patsubst %.pdf,%.tex,$@)

clean:
	rm -f rb-specs.pdf
	rm -f module-specs.pdf
	rm -f rb-specs.md
	rm -f module-specs.md
	latexmk -C
	rm *.tex
