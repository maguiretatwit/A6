# Prints a single int to the screen
.macro printInt
  li a7, 1
  ecall
.end_macro

# Prints a single char to the screen
.macro printChar
  li a7, 11
  ecall
.end_macro

# Prints a single space to the screen
.macro printSpace
  li a0, 0x20
  li a7, 11
  ecall
.end_macro

# Prints a single newline to the screen
.macro printNewLine
  li a0, 0x0A
  li a7, 11
  ecall
.end_macro

# Exits the program with status 0
.macro exit
  li a7, 10
  ecall  
.end_macro

