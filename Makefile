.PHONY: all clean publish

OUTPUTS = build/lejeune-vita/lejeune-vita.pdf build/lejeune-resume/lejeune-resume.pdf

all:
	tectonic -X build

open:
	open $(OUTPUTS)

view: all open

watch:
	tectonic -X watch -x 'build --open'

clean:
	rm -f $(OUTPUTS)
