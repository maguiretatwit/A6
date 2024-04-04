# Include macro functions printInt and exit
.include "common.asm"

.text
main:
    ###########################
    # We call is_upper('A')
    li a0, 'A'
    jal is_upper

    # This should print 1
    printInt
    printNewLine

    ###########################
    # We call is_upper('Z')
    li a0, 'Z'
    jal is_upper

    # This should print 1
    printInt
    printNewLine

    ###########################
    # We call is_upper('a')
    li a0, 'a'
    jal is_upper

    # This should print 0
    printInt
    printNewLine

    ###########################
    # We call is_upper('z')
    li a0, 'z'
    jal is_upper

    # This should print 0
    printInt
    printNewLine

    ###########################
    # Exit
    exit
   
# int is_upper(char x)
# This function checks if an input char is upper or lower case
# @param x The checked char
# @return 1 if upper or 0 if lower
is_upper:
    li a1 'Z'		#a1=z
    ble a0, a1 upper	#if(a0<=a1) goto upper
    li a0 0		#a0=0
    ret			#return
upper: 
    li a0 1		#a0=1
    ret			#return

