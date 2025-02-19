// libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
// funciton prototypes
char * mergeAlternately(char* word1, char* word2);

int main (int argc, char** argv) {
    // printf("hello world!\n"); // test passed!
    printf("Arg Count: %x\n", argc);
    if (argc != 3) {
        int neededArgs = 3-argc; // argv[0] is the program instantiation
        printf("Usage: %s requires %x argumets.\n", argv[0], neededArgs);
        exit(1);
    } else if (argc > 3) {
        printf("Usage: Too many arguments. %s requires 3 argumets.\n", argv[0]);
        exit(1);
    }

    char* word1 = argv[1];
    printf("word1: %s\n", word1);
    char* word2 = argv[2];
    printf("word2: %s\n", word2);

    

    char* buffer;
    buffer = mergeAlternately(word1, word2);
    printf("Final String: %s \n", buffer);

    return 0;
}

char * mergeAlternately(char * word1, char * word2){
    int total_wordsize = strlen(word1)+strlen(word2);
    char* merge = malloc(sizeof(char)* (total_wordsize+1)); // +1 for end of string character
    int index1 = 0, index2 = 0, index = 0;

    // Merge
    while (index1 < strlen(word1) || index2 < strlen(word2)) { // accounts for one word being longer than the other
        if (index1 < strlen(word1)) {  // take from word1, increase index
            merge[index] = word1[index1];
            printf("even: %c\n", merge[index]);
            index1++;
            index++;
        } 
        if (index2 < strlen(word2)) { // take from word2, increase index
            merge[index] = word2[index2];
            printf("odd: %c\n", merge[index]);
            index2++;
            index++;
        }
    }
    merge[total_wordsize] = '\0';
    printf("%s\n", merge);
    // char * final_merge = merge;
    return merge;
}