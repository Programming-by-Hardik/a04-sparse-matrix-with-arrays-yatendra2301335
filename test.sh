#!/bin/bash

# Compile the C program
gcc -o sparse_matrix_assignment hello.c

# Check if compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed."
    exit 1
fi

# Run the compiled program
./sparse_matrix_assignment

# Check if all tests passed
if ./sparse_matrix_assignment | grep -q "FAILED"; then
    echo "Some tests failed."
else
    echo "All tests passed!"
fi

# Clean up the compiled program
rm sparse_matrix_assignment