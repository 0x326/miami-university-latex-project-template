tex_files := $(wildcard *.tex)
bib_files := $(wildcard *.bib)

all: $(patsubst %.tex, %.pdf, $(tex_files))

spell-check: $(patsubst %.tex, spell-check-%, $(tex_files))

clean:
	git clean -X -f

%.pdf: %.tex $(bib_files)
	latexmk -pdf $<

spell-check-%: %.tex
	aspell --dont-backup check $<

.PHONY: all spell-check clean spell-check-%
