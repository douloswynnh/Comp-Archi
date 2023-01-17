linker : linker.c
	gcc -ansi -Wall -o linker linker.c

run :
	./masm_mrd -o < main.asm > main.obj
	./masm_mrd -o < readint.asm > readint.obj
	./masm_mrd -o < writeint.asm > writeint.obj
	./masm_mrd -o < writestr.asm > writestr.obj
	./masm_mrd -o < addints.asm > addints.obj
	./masm_mrd -o < xbsywt.asm > xbswt.obj
	./masm_mrd -o < rbsywt.asm > rbswt.obj
	./linker main.obj readint.obj writeint.obj writestr.obj addints.obj xbswt.obj rbswt.obj > main.exe
	./mic1 prom_mrd.dat main.exe 0 2048
 
dump :
	./masm_mrd -o < main.asm > main.obj
	./masm_mrd -o < readint.asm > readint.obj
	./masm_mrd -o < writeint.asm > writeint.obj
	./masm_mrd -o < writestr.asm > writestr.obj
	./masm_mrd -o < addints.asm > addints.obj
	./masm_mrd -o < xbsywt.asm > xbswt.obj
	./masm_mrd -o < rbsywt.asm > rbswt.obj
	./linker -o main.obj readint.obj writeint.obj writestr.obj addints.obj xbswt.obj rbswt.obj 
 
 clean :
	rm *.obj
	rm main.exe
	rm linker