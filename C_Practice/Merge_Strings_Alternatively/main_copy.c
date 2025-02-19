// libraries
#include <stdio.h>
// funciton prototypes
int main () {
    // printf("hello world!\n"); // test passed!
    char name[50];
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Hello, %s!\n", name);
    return 0;
}