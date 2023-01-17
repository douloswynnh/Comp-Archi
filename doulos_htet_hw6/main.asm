start:  lodd on:
	stod 4095
	call xbsywt:
	loco str1:
nextw:  pshi			
        addd c1:		
        stod pstr1:		
        pop			
        jzer crnl:	
        stod 4094		
        push			
        subd c255:		 
        jneg crnl:		
        call sb:		
        insp 1			
        push			
        call xbsywt:		 
        pop			
        stod 4094		
        call xbsywt:	
        lodd pstr1:		
        jump nextw:                                                                            
crnl:   lodd cr:		
        stod 4094		
        call xbsywt:		
        lodd nl:		
        stod 4094		
        call xbsywt:
	lodd numcnt:
        jneg result:			
        lodd on:                
        stod 4093                                                                                  
bgndig: call rbsywt:                               
        lodd 4092                                                                                  
        subd numoff:                                                                                
        push                                                                                        
nxtdig: call rbsywt:                                                                                
        lodd 4092                                                                                   
        stod nxtchr:                                                                                
        subd nl:                                                                                    
        jzer endnum:                                                                                
        mult 10                                                                                     
        lodd nxtchr:                                                                                
        subd numoff:                                                                                
        addl 0                                                                                      
        stol 0                                                                                      
        jump nxtdig: 
endnum: lodd numptr:                                                                                
        popi                                                                                        
        addd c1:                                                                                    
        stod numptr:                                                                                
        lodd numcnt:                                                                                
        jzer addnms:                                                                                
        subd c1:                                                                                    
        stod numcnt:                                                                                
        jump start:                                                                                 
addnms: lodd numcnt:		
	subd c1:
	stod numcnt:
	lodd binum1:			
	stod sum:		
	lodd binum2:		
	addd sum:		
	stod sum:		
	jneg ovrflow:		
	loco str2:		
	jump nextw:
result: lodd sum:               
        jneg done: 
	lodd on:
	stod 4095
	lodd neg1:		
	push
	lodd mask:
	push
encode: lodd sum:
	jzer print:		
	lodd mask:		
	push
	lodd sum:		
	push
	div			
	pop			
	stod sum:		
	pop			
	insp 2			
	addd numoff:		
	push			
	jump encode:		
print:  pop			
	jneg done:			
	stod 4094
	call xbsywt:
	jump print:
ovrflow:
        lodd neg1:              
        stod sum:
	loco str3:              
	jump nextw:
done:   lodd sum:               
        halt
xbsywt: lodd 4095		
        subd mask:
        jneg xbsywt:
        retn
rbsywt: lodd 4093		
        subd mask:
        jneg rbsywt:
        retn
sb:     loco 8
loop1:  jzer finish:
        subd c1:
        stod lpcnt:
        lodl 1
        jneg add1:
        addl 1
        stol 1
        lodd lpcnt:
        jump loop1:
add1:   addl 1
        addd c1:
        stol 1
        lodd lpcnt:
        jump loop1:
finish: lodl 1
        retn
numoff: 48
nxtchr: 0
numptr: binum1:
binum1: 0
binum2: 0
lpcnt:  0
mask:   10
on:     8
nl:     10			
cr:     13			
c1:     1
c10:    10
c255:   255
sum:    0
numcnt: 1
pstr1:  0
neg1:	-1
zero:	0
str1:   "PLEASE ENTER AN INTEGER BETWEEN 1 AND 32767"
str2:	"THE SUM OF THESE INTEGERS IS:"
str3:	"OVERFLOW, NO SUM IS POSSIBLE"