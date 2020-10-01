#!/usr/bin/env bash

# extract_and_compile.sh takes a number that is passed to  C program as an arugment
# Extract
tar xf NthPrime.tgz
#Compile the c code
gcc -o NthPrime/NthPrime NthPrime/main.c NthPrime/nth_prime.c
#Run the c code
./NthPrime/NthPrime "$1"