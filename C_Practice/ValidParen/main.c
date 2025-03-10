/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 

Example 1:

Input: s = "()"

Output: true

Example 2:

Input: s = "()[]{}"

Output: true

Example 3:

Input: s = "(]"

Output: false

Example 4:

Input: s = "([])"

Output: true
*/



// #include libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Funciton prototypes

// main
int main(int argc, char** argv) {
    if (argc < 2) {
        int neededArgs = 2-argc; // argv[0] is the program instantiation
        printf("Usage: %s requires %d argumets.\n", argv[0], neededArgs);
        exit(1);
    } else if (argc > 2) {
        printf("Usage: Too many arguments. %s requires 3 argumets.\n", argv[0]);
        exit(1);
    }
}


// Helper functions