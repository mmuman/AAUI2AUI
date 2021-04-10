
# on Debian you need:
# apt install make libreoffice unoconv pandoc pdfjam pdftk texlive texlive-lang-french

OUT=	wiring.png wiring.pdf wiringa4.pdf \
	setup.pdf setup.png \
	manual_en.pdf manual_fr.pdf \
	assembly_en.pdf assembly_fr.pdf

all: $(OUT)

KITOUT= jack.png jack.pdf hole.png hole.pdf kit.pdf

kit: $(KITOUT)

wiringa4.pdf: wiring.pdf
	pdfjam $< --a4paper --angle 90 --outfile $@

wiring.png: wiring.odg
	unoconv -o $@ -e Width=1024 -e Height=722 $<

setup.png: setup.odg
	unoconv -o $@ -e Width=1024 -e Height=277 $<

%.png: %.odg
	unoconv -o $@ $<

%.pdf: %.odg
	unoconv -o $@ $<
# If you get:
# Error: Unable to connect or start own listener. Aborting.
# You may retry after:
# killall soffice.bin


%.pdf: %.md
	sed 's/\.png /\.pdf /g' < $< | pandoc - -o $@

kit.pdf: kit.md jack.pdf hole.pdf

manual_%.pdf: manual_%.md setup.pdf

assembly_%.pdf: assembly_%.md wiringa4.pdf
	sed 's/\.png /\.pdf /g' < $< | pandoc - -o tmp_$@
	pdftk tmp_$@ dump_data output tmp_$@.info
	pdftk A=tmp_$@ B=wiringa4.pdf cat A B output tmp2_$@
	pdftk tmp2_$@ update_info tmp_$@.info output $@
	rm tmp_$@ tmp2_$@ tmp_$@.info

clean:
	rm $(OUT) $(KITOUT)
