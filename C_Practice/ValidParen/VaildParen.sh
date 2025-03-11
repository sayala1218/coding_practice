#!/bin/bash

# # Navigate to the directory containing your main program
# cd /Users/steph/Documents/UW Classes/coding_practice/C_Practice/Roman_Integers

# Compile the main program (assuming it's a C program)
gcc -Wall -o ValidPar main.c
if [ $? -eq 0 ]; then # $? is a special variable that holds the exit status of the last command executed
    # Run the compiled program
    ./ValidPar
    echo " "
    ./ValidPar
    echo " "
    ./ValidPar

else
    echo "Compilation failed."
fi
