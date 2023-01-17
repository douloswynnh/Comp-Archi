COMP 3050 Computer Architecture 						Doulos Htet
Assignment # November 2, 2022			  doulos_htet@student.uml.edu

I believe this code is 100% successful. The output sums are working 
correctly by detecting overflow when it occurs. I can add two numbers
in each run but I have to quit the program to run it again. I used 
the following commands to get an output. 

./masm_mrd < a5.asm > a5.obj
./mic1 prom_mrd.dat a5.obj 0 2048

The first command is to compile obj file and the second mic1 command
is used to add the sum of the numbers
 

