

all: wiring.pdf wiring.png setup.png

wiring.pdf: wiring.odg
	loffice --convert-to pdf $<

wiring.png: wiring.odg
	loffice --convert-to png $<

setup.png: setup.odg
	loffice --convert-to png $<
