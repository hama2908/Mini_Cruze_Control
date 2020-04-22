# programme assembleur pour PIC32MX370F512L
     
     .globl racine
     .set noreorder  # cela facilite le pas-à-pas 
     .data 0x10010000
     .align 4    
     .text 0x400000 
    
     .ent racine
     
racine:

	#valeur S (Simule)
	li $t9, 1
	#p = position du ?1? d?avant-garde dans la représentation binaire de S
	 clz $t1,$a0
	 negu $t1, $t1
	 addu $t1,$t1,32
	#q = p/2
	 sra $t2,$t1,1
	#x=2 exp(q)
	 sllv $t3,$t9,$t2
loop:	 	 
	#S/x
	 div $t4,$a0,$t3
	#S/x - x
	 subu $t5,$t4,$t3
	#1/2 (S/x - x)
	 sra $t6,$t5,1
	#x = x + delta
	 addu $t3,$t3,$t6
	#until delta is smaller or equal to epsi
	 bgtz $t6,loop
	 
	 nop
	 add $v0,$t3,0
         jr $ra
         nop
	 
.end racine 

