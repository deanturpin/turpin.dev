markdown := $(wildcard *.md)
html = $(markdown:%.md=%.html)

all: $(html)

%.html: %.md
	./htmlhere.sh < $< > $@

install:
	sudo cp htmlhere.sh /usr/bin

fox: all
	firefox index.html
