include makedoc/Makefile

AUTHOR = Jakob Voß
TITLE = Describing data patterns. A general deconstruction of metadata standards
#DATE = May 31th, 2013

TOC:=

all: handout slides

handout: handout.pdf

slides: slides.pdf

slides.html:
	pandoc -t slidy --self-contained -s tmp.md -o slides.html

handout.pdf: handout.md
	@echo "% $(TITLE)" > tmp.md
	@echo "% $(AUTHOR)" >> tmp.md
	@echo "% $(DATE)" >> tmp.md
	@cat $< >> tmp.md
	@pandoc -o $@ tmp.md
	@rm tmp.md

