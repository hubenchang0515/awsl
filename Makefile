# Generated by [MakeMake](https://github.com/hubenchang0515/makemake)

.PHONY: all install uninstall clean

all: awsl

install: all
	 install -m0755 awsl /usr/bin

uninstall:
	 rm -rf /usr/bin/awsl

clean:
	 rm -f strings.o function.o token.o executor.o vector.o ast.o parser.o lexer.o main.o

awsl : strings.o function.o token.o executor.o vector.o ast.o parser.o lexer.o main.o  
	gcc -o $@ $^ -lm 

strings.o: strings.c strings.h utils.h
	gcc -c ./strings.c -O2 -W -Wall -std=c99 

function.o: function.c function.h strings.h vector.h utils.h
	gcc -c ./function.c -O2 -W -Wall -std=c99 

token.o: token.c token.h strings.h utils.h
	gcc -c ./token.c -O2 -W -Wall -std=c99 

executor.o: executor.c executor.h ast.h vector.h strings.h utils.h \
 function.h
	gcc -c ./executor.c -O2 -W -Wall -std=c99 

vector.o: vector.c vector.h
	gcc -c ./vector.c -O2 -W -Wall -std=c99 

ast.o: ast.c ast.h vector.h strings.h utils.h token.h
	gcc -c ./ast.c -O2 -W -Wall -std=c99 

parser.o: parser.c parser.h vector.h token.h strings.h ast.h utils.h
	gcc -c ./parser.c -O2 -W -Wall -std=c99 

lexer.o: lexer.c utils.h strings.h lexer.h token.h vector.h
	gcc -c ./lexer.c -O2 -W -Wall -std=c99 

main.o: main.c token.h strings.h lexer.h vector.h ast.h parser.h \
 executor.h
	gcc -c ./main.c -O2 -W -Wall -std=c99 
