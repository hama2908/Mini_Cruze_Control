
     
     .global racine_carree

     .set noreorder  # cela facilite le pas-à-pas 
     
     .data
     .align 4

     .text
     
     .ent racine_carree
     
     racine_carree:
	
	clz $t0,$a0
	negu $t1, $t0
	addi $t2,$t1,32 # p=$t2
	sra $t3,$t2,1  # Q
	li $t4,1
	sllv $t5,$t4,$t3 # $t5=2^q
loop:
		
	div $t0,$a0,$t5 # (S/x)
	sub $t1,$t0,$t5 # ((S/x)-x)
	li $t2, 2
	div $t0,$t1,$t2 /*1/2((S/x)-x))*/
	add $t5,$t0,$t5
	bgt $t0,1,loop
	nop # attention! tous les j et les b ont une delay slot!!!!
	
	addi $v0,$t5,0
	
    
	jr $ra # implicite ici la somme est deja dans v0
	nop # delay slot
.end racine_carree




