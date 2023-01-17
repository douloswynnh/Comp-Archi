masm_new: mic1symasm_new.o lex.yy.o
	gcc -o masm_new mic1symasm_new.o lex.yy.o
mic1symasm_new.o:  mic1symasm_new.c
	gcc -c -g mic1symasm_new.c
lex.yy.o:  lex.yy.c
	gcc -c -g lex.yy.c
lex.yy.c: mic1symasm_new.ll
	flex mic1symasm_new.ll
clean:
	rm lex.yy.o lex.yy.c mic1symasm_new.o masm_new
