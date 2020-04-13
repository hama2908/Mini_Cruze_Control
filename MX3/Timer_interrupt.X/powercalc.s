


.set noreorder  
  
.data 0x10010000
    
.text

.globl powercalc

.ent powercalc
powercalc:
    li $t7, 1
    li $t6, 32
    
    clz $t1,$a0
    
    
    subu $t2,$t2,1
    sra $t2,$t1,1
    sllv $t3,$t7,$t2
     
loop:
    div $t4,$t0,$t3
    
    sub $t5,$t4,$t3
    sra $t6,$t5,1
    add $t3,$t3,$t6
    bgt $t6,1, loop
    nop 
    add $v0,$t3,$zero
    
    jr $ra
    nop
    
    
.end powercalc
    