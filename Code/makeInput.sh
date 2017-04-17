#!/bin/bash

for i in {1..101}; do 
    awk -v i="$i" 'NR==6{$0= 0.5+(i-1)*0.01}1;' "test.in" > "X2_0_test_$i.in";
done
