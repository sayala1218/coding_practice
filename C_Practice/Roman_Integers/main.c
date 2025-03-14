// include libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// funciton prototypes
int singleConversion(char c);
int romanToInt(char* s);
int checkSpecial (char c1, char c2);

int main(int argc, char** argv) {
    // scanf("%s", argv[1]);

    // printf("Arg Count: %x\n", argc);
    if (argc != 2) {
        int neededArgs = 2-argc; // argv[0] is the program instantiation
        printf("Usage: %s requires %x more argumets.\n", argv[0], neededArgs);
        exit(1); // exit(1) gives error in terminal
    } else if (argc > 2) {
        printf("Usage: Too many arguments. %s requires 2 argumets.\n", argv[0]);
        exit(1);
    }
    printf("You input: %s\n", argv[1]);
    int sum = romanToInt(argv[1]);
    printf("Total sum: %d\n", sum);
    exit(0);
}
int romanToInt(char* s) {
    // get different charactiers
    // add or subtract based on the next character
    // return the sum

    int sum = 0;
    int index = 0;

    while(index < strlen(s)){
        int check = checkSpecial(s[index], s[index+1]);
        if(check){ // Subtraction from special cases
            sum -= singleConversion(s[index]);
        } else { // addition from the non-special cases
            sum += singleConversion(s[index]);
        }

        index++;
    }
    return sum;
}
// Convert single character to integer equivalent
int singleConversion(char c) { 
    // Symbol       Value
    // I             1
    // V             5
    // X             10
    // L             50
    // C             100
    // D             500
    // M             1000
    switch (c)
    {
    case 'I': return 1;
    case 'V': return 5;
    case 'X': return 10;
    case 'L': return 50;
    case 'C': return 100;
    case 'D': return 500;
    case 'M': return 1000;
    default:
        printf("Usage: Enter valid Roman Number\n");
        exit(1);
    }
    return 0;
}

// Check the special cases for subtraction
int checkSpecial (char c1, char c2) {

    if(c1 == 'I' && (c2 == 'V' || c2 == 'X')){
        return 1;
    } else if(c1 == 'X' && (c2 == 'L' || c2 == 'C')){
        return 1;
    } else if(c1 == 'C' && (c2 == 'D' || c2 == 'M')){
        return 1;
    }
    
    return 0;
}

