all:    once

once: 
	cd Tex && latexmk -halt-on-error MUN_G.tex > /dev/null

alert: 
	cd Tex && latexmk -halt-on-error MUN_G.tex

clean: 
	cd Tex && rm -f *.log *.nlo *.idx MUN_G.synctex* *.aux *.toc *.out ./misc/*.aux *.bbl *.bcf *.xml *.blg *.fdb* *.fls

clobber: 
	cd Tex && rm -f *.log *.nlo *.idx MUN_G.synctex* *.aux *.toc *.out ./misc/*.aux *.bbl *.bcf *.xml *.blg *.fdb* *.fls *.pdf

continous:
	cd Tex && latexmk -pvc -view=none MUN_G.tex
#
#biber: (used when xelatex was used instead of latexmk)
#	make once
#	biber MUN_G
#	make once
#	make once
#
