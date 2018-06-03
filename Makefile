BASE=book
BOOKNAME=`ls -1 $(BASE)`
SRC=book/$(BOOKNAME)
IMAGE=andreacensi/duckuments:1

all:
	cat README.md

update-resources:
	git submodule sync --recursive
	git submodule update --init --recursive

include resources/makefiles/setup.Makefile
