include makedoc/Makefile

AUTHOR = Jakob Voß
TITLE = Describing data patterns. A general deconstruction of metadata standards
#DATE = May 31th, 2013

all: handout slides

handout: handout.pdf

slides: slides.pdf

handout.pdf: handout.md
	@echo "% $(TITLE)" > tmp.md
	@echo "% $(AUTHOR)" >> tmp.md
	@echo "% $(DATE)" >> tmp.md
	@cat $< >> tmp.md
	@pandoc -o $@ tmp.md
	@rm tmp.md

