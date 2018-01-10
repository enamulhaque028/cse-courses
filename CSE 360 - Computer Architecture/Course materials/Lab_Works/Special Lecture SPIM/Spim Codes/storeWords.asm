## Program shows memory storage and access (big vs. little endian)     
        .data                 
here:	.word 0xabc89725, 100 
	     .byte 0, 1, 2, 3      
	     .asciiz "Sample text" 		
there:	 .space 6              
	      .byte 85
	      .align 2		
         .byte 32

         .text 			
	      .globl main		
main:		
	      la $t0, here           
	      lbu $t1, 0($t0)        
	      lbu $t2, 1($t0)        
	      lw  $t3, 0($t0)        
	      sw  $t3, 36($t0)       
	      sb  $t3, 41($t0)       

