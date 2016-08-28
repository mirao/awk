{
    a[$0] = $0
}
END {
    split("", a)
    cnt = 0
    for (i in a) {
        print a[i]
        cnt++
    }
    print "Count is", cnt
}
