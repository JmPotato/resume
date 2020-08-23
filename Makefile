all: en zh clean

en: resume.tex
	xelatex resume.tex

zh: resume-zh
	xelatex resume-zh.tex

resume-zh: resume.tex
	cat resume.tex | sed 's/zh}\[1\]{}/zh}\[1\]{#1}/g' | sed 's/en}\[1\]{#1}/en}\[1\]{}/g' > resume-zh.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.cut *.fls *.fdb_latexmk resume-zh.tex __latexindent_temp.tex

.PHONY: clean
