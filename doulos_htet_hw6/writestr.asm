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
