# Include macro functions printInt and exit
.include "common.asm"

.data
s_hello: .asciz "Hello"
s_bye: .asciz "Bye"
s_count: .asciz "One Two Three Four"

.text
main:
    ###########################
    # We call print_string(s_hello)
    la a0, s_hello

    # This should print "Hello"
    jal print_string
    printNewLine

    ###########################
    # We call print_string(s_bye)
    la a0, s_bye

    # This should print "Bye"
    jal print_string
    printNewLine

    ###########################
    # We call print_string(s_count)
    la a0, s_count

    # This should print "One Two Three Four"
    jal print_string
    printNewLine

    ###########################
    # Exit
    exit
   
# void add(string x)
# This function prints a string
# @param x The string
print_string:
    mv s0 a0	#s0=a0
    lb a0 (s0)	#a0=as0[x]
chk:
    beq a0 zero end	#if(a0==0) goto end
    printChar		#printChar
    addi s0, s0, 1	#a0=a0+1
    lb a0, (s0)		#a0 =s0[x]
    j chk		#goto chk
end:
    ret			#return

