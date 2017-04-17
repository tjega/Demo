#!/bin/bash

for i in {41..50}; do 
    awk -v i="$i" 'NR==30{$0= 0.587960+(i-40)*0.000001}1;' "test.in" > "Eq_test_$i.in";  
done