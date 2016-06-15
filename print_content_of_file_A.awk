# print all lines of input files
# long variant
BEGIN {
        while (getline) 
            print $0
}