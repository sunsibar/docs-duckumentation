BASE:=book
BOOKNAME:=`ls -1 $(BASE)`
SRC:=book/$(BOOKNAME)
IMAGE:=andreacensi/duckuments:1

all:
	cat README.md

include resources/makefiles/setup.Makefile
