# README

## Introduction

In this assignment, you'll be practicing using functions and calling them.

- Due: 1 week
- Deliverables: Commit and push to Github. Submit to Gradescope.

## Function Documentation

Each function you write should have documentation before it. The first line should
show what the function looks like, the return type, name, and list of arguments.

After that include a description of what the function should do.

Lastly, add the @param and @return like that from Javadoc.

Below is an example:

    # int add(int x, int y)
    # This function adds two numbers
    # @param x The first number
    # @param y The second number
    # @return The sum
    add:
       add a0, a0, a1       # a0 += a1
       ret                  # return

## Part A

Write a function that compares two numbers. It returns 1 if they are equal, and 0 if not.

## Part B

Write a function that returns 1 if the letter is an upper-case letter, 0 if it's a lower-case
letter. Assume that you only get ASCII letters (A-Z, a-z). Consult the ASCII table.

Hint: You can do this with a single if/else conditional.

## Part C

In the "Advanced Assembly" slides, there is code that prints each number of the array. The code
currently only works as part of main. Change the code so that it's a function that takes an array
and the array length (in a0 and a1), and add the prologue and epilogue.

In other words, instead of starting with this:

    la s1, array
    lw s2, alength

the main function gets the values into a0 and a1:

    la a0, array
    lw a1, alength
    jal print_array

and the print_array function will take the address and length in a0 and a1 and print each element.

It is important that you pay attention to the registers you use! Remember, s-registers survive
across function calls, a and t registers don't.

The function you just wrote is equivalent to the following C function:

    void print_array(int* p, int alen) {
        while(alen > 0) {
            int a = *p;
            printInt(a);

            p++;
            alen--;
        }
    }

## Part D

In the "Advanced Assembly" slides, there is code that prints each leter of a string. The code
currently only works as part of main. Change the code so that it's a function that takes a pointer to a string, and add the prologue and epilogue.

In other words, instead of starting with this:

    la s0, s_hello

the main function gets the values into a0 and a1:

    la a0, s_hello
    jal print_string

and the print_string function will take the address in a0 and print each element.

The function you just wrote is equivalent to the following C function:

    void print_string(char* p) {
        char c = *s;
        while(c != 0) {
            printChar(c);

            s++;
            c = *s;
        }
    }

Likewise, it is important that you pay attention to the registers you use! Remember, s-registers survive
across function calls, a and t registers don't.
