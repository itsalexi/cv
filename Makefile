NAME=cv

all:
	@command -v tectonic >/dev/null 2>&1 && tectonic $(NAME).tex || latexmk -pdf $(NAME).tex

# Cover letter is built on demand; CI only publishes cv.pdf.
cover:
	@command -v tectonic >/dev/null 2>&1 && tectonic cover-letter.tex || latexmk -pdf cover-letter.tex

clean:
	rm -f $(NAME).aux $(NAME).bbl $(NAME).bcf $(NAME).fdb_latexmk $(NAME).fls $(NAME).log $(NAME).out $(NAME).run.xml $(NAME).blg $(NAME).toc $(NAME).xdv $(NAME).synctex.gz *\~

distclean: clean
	rm -f $(NAME).pdf
