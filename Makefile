
.PHONY: all clean

TARGETS=out/pinhole.pdf

# http://stackoverflow.com/questions/18136918/how-to-get-current-directory-of-your-makefile
ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

OUT_DIR = out
DEPS_DIR = out/deps
LATEXMK = latexmk -recorder -use-make -deps
all : $(TARGETS)

include media.mk
# Include the dependency makefile produced by latexmk
# latexmk -deps-out= is used to record the dependencies
$(foreach file,$(TARGETS),$(eval -include $(DEPS_DIR)/$(notdir file)P))


$(OUT_DIR)/.touch:
	mkdir -p $(dir $@) 
	touch $@

$(DEPS_DIR)/.touch:
	mkdir -p $(dir $@)
	touch $@

$(OUT_DIR)/%.pdf: %.tex $(DEPS_DIR)/.touch $(OUT_DIR)/.touch out/%preamble.fmt
	TEXINPUTS=.:$(ROOT_DIR)/mtheme/: $(LATEXMK) -pdf -dvi- -ps- -output-directory=out -pdflatex="xelatex -interaction=nonstopmode -fmt pinholepreamble.fmt -shell-escape %O %S" -deps-out=$(DEPS_DIR)/$(notdir $@)P $<

# Dump presentation preamble as a fmt file. This is a binary file that is used
# to contain precompiled latex preambles. This can sufficiently speed
out/%preamble.fmt: $(OUT_DIR)/.touch %preamble.tex
	TEXINPUTS=.:$(ROOT_DIR)/mtheme/: xelatex -ini -shell-escape -jobname="pinholepreamble" -output-directory=out "&xelatex pinholepreamble.tex\dump"

clean:
	latexmk -C -output-directory=out pinhole.tex
