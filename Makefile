.PHONY: build
# Markdown source files to include
FILES		= `cat index.txt`
DATE		= $(shell date +"%Y-%m-%d")
TEMPLATE	= template.tex
OPTIONS		= --from markdown \
		--toc             \
		--number-sections \
		--smart           \
		--to latex        \
		--listings        \
		--highlight-style=haddock \
		--latex-engine=xelatex
OUTPUT ?= report.pdf

# Custom information from the configuration file
#TITLE	:= $(shell egrep 'title:' docinfo.txt | sed 's/[^:]*:\s*//')
ARGUMENTS = $(shell cat docinfo.txt | sed 's/^/-V /')

build:
	pandoc $(OPTIONS) --template $(TEMPLATE) $(ARGUMENTS) -V date="$(DATE)" -V bg-color=220,220,220 --out $(OUTPUT) $(FILES)
