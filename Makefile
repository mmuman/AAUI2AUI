

all: wiring.pdf wiring.png setup.png

wiring.pdf: wiring.odg
	loffice --convert-to pdf $<

wiring.png: wiring.odg
	unoconv -o $@ -e Width=1024 -e Height=722 $<

setup.png: setup.odg
	unoconv -o $@ -e Width=1024 -e Height=277 $<
