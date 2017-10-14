#
# Makefile to handle subfolder makes
#
#
# Author: Sascha Girrulat <sascha@girrulat.de>
#
#


all: setup pdf

setup:
	cd src; make setup

pdf:
	cd src; make pdf

gliederung:
	cd src; make gliederung 

clean:
	cd src; make clean
	rm target tmp tasks -Rf
