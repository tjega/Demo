#!/bin/bash

for i in {101..120}; do 
    awk -v i="$i" 'NR==30{$0= 0.58+(i-100)*0.001}1;' "test.in" > "mu1_test_$i.in";  
done