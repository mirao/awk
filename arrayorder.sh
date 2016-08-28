#!/bin/bash
echo 'line 1
line 2
line 3' | awk '{ l[lines++] = $0 }
END {
    for (i = lines - 1; i >= 0; i--)
       print l[i]
}'