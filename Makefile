#
# Makefile to handle subfolder makes
#
#
# Author: Sascha Girrulat <sascha@girrulat.de>
#
#
VERSION=$(shell grep version src/version.tex | sed 's/\\newcommand{\\version}{Version //g;s/}//')

all: setup pdf

tag:
	git tag -s "release/lecture-${VERSION}" -m "tagging release/lecture-${VERSION}"

setup:
	cd src; make setup

pdf:
	cd src; make pdf

gliederung:
	cd src; make gliederung 

clean:
	cd src; make clean
	rm target tmp tasks -Rf
