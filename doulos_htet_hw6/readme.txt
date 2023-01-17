COMP 3050 Computer Architecture 					Doulos Htet
Assignment #6 November 29, 2022			  doulos_htet@student.uml.edu

I believe this code is 100% successful. I was able to bulid linker.c using 
some help from ~bill/cs305/MasmSrc and I used my previous hw5.asm and split
it into seven files- 
1.main.asm
2.readint.asm
3.writeint.asm
4.writestr.asm
5.addints.asm
6.xbsywt.asm
7.rbsywt.asm 
and turn those .asm into .obj files and link those .obj into main.exe file 
which are all automated in Makefile. Then, I ran mic1 with prom_mrd.dat to run
my main.exe file. Lastly, I ran cat main.exe to show the output of main.exe 
that are in 16 bit opcode. 
The make commands are "make" to compile linker.c, "make run" to assemble .asm
into .obj, link them with linker.c, and mic1 command, "make clean" to clean 
.exe, .obj and linker. 


 

