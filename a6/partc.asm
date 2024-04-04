# Include macro functions printInt and exit
.include "common.asm"

.data
array1:
    .word 4
    .word 4
a1_len:
    .word 2

array2:
    .word 9
    .word 9
    .word 9
    .word 9
    .word 9
    .word 9
    .word 9
a2_len:
    .word 7

array3:
    .word 8
a3_len:
    .word 1

.text
main:
    ###########################
    # We call print_array(array1, a1_len)
    la a0, array1
    lw a1, a1_len

    # This should print 44
    jal print_array
    printNewLine

    ###########################
    # We call print_array(array2, a2_len)
    la a0, array2
    lw a1, a2_len

    # This should print 9999999
    jal print_array
    printNewLine

    ###########################
    # We call print_array(array3, a3_len)
    la a0, array3
    lw a1, a3_len

    # This should print 8
    jal print_array
    printNewLine

    ###########################
    # Exit
    exit
   
# void add(int[] x, int y)
# This function prints out all ints in an array
# @param x The array of numbers
# @param y The length of the array
print_array:
    mv s0 a0		#s0=a0
begin:
    ble a1 zero end	# if (a1==0) goto end
    lw a0, (s0)		#a0=s0[x]
    printInt		#printInt()
    addi s0 s0 4	#s0=s0+4
    addi a1 a1 -1	#a1=a1-1
    j begin		#goto begin
    
end:
    ret			#return
