#!/bin/bash

./main | grep "Hello, World!"
if [ $? -eq 0 ]; then
    echo "Test passed."
    exit 0
else
    echo "Test failed."
    exit 1
fi
