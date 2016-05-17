BEGIN {
    myarray[1]="jim"
    myarray[2]=456
    myarray["mira"]="jobr"
    myarray["A","B","C"]="hello world"
    for (i in myarray) print myarray[i]
}