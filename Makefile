BASE:=book
BOOKNAME:=`ls -1 $(BASE)`
SRC:=book/$(BOOKNAME)


all:
	cat README.md



include resources/makefiles/setup.Makefile
