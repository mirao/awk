#! /bin/sh
# process shell commands in awk and pass to shell
# example of my.txt:
# ------------
# echo Nazdar
# echo Auto
# echo Kaspar

awkp='
    /ar/ {print}
'

cat my.txt | awk "$awkp" | /bin/sh