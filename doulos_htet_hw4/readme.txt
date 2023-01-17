COMP 3050 Computer Architecture 						Doulos Htet
Assignment #4 October 25, 2022			  doulos_htet@student.uml.edu

	This assignment is to create three new microcode instructions for mic1. 
Firstly, I tried to run rshift code from professor and tested how it worked.
Then, I started modifying that rshift microcode and added mult and div 
instructions. Then, I tried to compile that microcode into 32 bit op code named
prom_new.dat. I rewrote the flex .ll file which is already given in assignment 
4 instuctions with the new instructions mult, div and rshift. Then, I added a 
few cases in .c file which is also already given for mult and div and rshift. 
I used professor's rshift make file and modified it abit with new names to build 
flex files. I also created 3 new .obj files for mult, div and rshift and tested 
with mic1 and prom_new.dat which I created earlier. I tested with 0 2048 for the 
values of program counter and stack counter. The rshit and mult loop back to the 
starting program counter but div runs endlessly so I am not sure what caused the 
problem for this. I detailed the steps in output.txt and I believe the whole 
program works 90% with the exception of div. 