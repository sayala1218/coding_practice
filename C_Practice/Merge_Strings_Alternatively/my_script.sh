#!/bin/bash
# This is a script to compile and run the C program that merges two strings alternatively

# Compile the C program
gcc -o mergeAlt main.c

# Check if compilation was successful
if [ $? -eq 0 ]; then # $? is a special variable that holds the exit status of the last command executed

    # Run the compiled program
    ./mergeAlt "abc" "pqr"
    echo " "
    ./mergeAlt "ab" "pqrs"
    echo " "
    ./mergeAlt "abcd" "pq"
    echo " "
    echo "Successfully compiled and ran the program."
else
    echo "Compilation failed."
fi