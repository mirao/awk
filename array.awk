BEGIN {
    mirovoarray[1]="jim"
    mirovoarray[2]=456
    mirovoarray["mira"]="jobr"
    mirovoarray["as"]="jobr"
    mirovoarray["A","B","C"]="hello world"
    mirovoarray[-300] = "minus třista"
    name = "Mira"
    mirovoarray[name] = "Obr"
    for (i in mirovoarray) print i, mirovoarray[i]
}