BEGIN {
    a["last"] = "De"
    a["first"] = "sac"
    a["middle"] = "cul"
   
    IGNORECASE=1
    asorti(a, b)
    asort(a, c)

    for (i in b)
        printf "%d: ind: %s, val: %s\n", i, b[i], c[i]
}