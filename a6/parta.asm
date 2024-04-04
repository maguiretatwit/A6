# Include macro functions printInt and exit
.include "common.asm"

.text
main:
    ###########################
    # We call is_eq(11, 11)
    li a0, 11
    li a1, 11
    jal is_eq

    # This should print 1
    printInt
    printNewLine

    ###########################
    # We call is_eq(13, 13)
    li a0, 13
    li a1, 13
    jal is_eq

    # This should print 1
    printInt
    printNewLine

    ###########################
    # We call is_eq(13, 9)
    li a0, 13
    li a1, 9
    jal is_eq

    # This should print 0
    printInt
    printNewLine

    ###########################
    # We call is_eq(9, 13
    li a0, 9
    li a1, 13
    jal is_eq

    # This should print 0
    printInt
    printNewLine

    ###########################
    # Exit
    exit
   
# int is_eq(int x, int y)
# This function checks if two numbers are equal
# @param x The first number
# @param y The second number
# @return 1 if true and 0 if false
is_eq:
    beq a0, a1 true	#if (a0==a1) goto true
    li a0, 0		#a0=0
    ret			#return()
true:
    li a0, 1    	#a0=1
    ret			#return

