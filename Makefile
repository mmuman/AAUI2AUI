

all: wiring.pdf wiring.png setup.png setup.pdf manual.pdf

wiring.pdf: wiring.odg
	loffice --convert-to pdf $<

wiring.png: wiring.odg
	unoconv -o $@ -e Width=1024 -e Height=722 $<

setup.png: setup.odg
	unoconv -o $@ -e Width=1024 -e Height=277 $<

setup.pdf: setup.odg
	unoconv -o $@ $<

manual.pdf: manual.md setup.pdf
	pandoc $< -o $@
