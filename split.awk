BEGIN {
    numelements=split("Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec",mymonths,",")
    for (i in mymonths) print mymonths[i]
}    