PYTHON := uv
QUARTO := quarto

PRESENTATION := main.qmd
OUTPUT := main.html

.PHONY: all render preview clean deps

all: render

deps:
	$(PYTHON) sync

render:
	$(PYTHON) run $(QUARTO) render $(PRESENTATION)

preview:
	$(PYTHON) run $(QUARTO) preview $(PRESENTATION)

clean:
	rm -f $(OUTPUT)
	rm -rf .quarto
