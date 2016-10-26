function cmp_num_idx(i1, v1, i2, v2)
{
     # numerical index comparison, ascending order
     return (i1 - i2)
}

function cmp_str_val(i1, v1, i2, v2)
{
    # string value comparison, ascending order
    v1 = tolower(v1) ""
    v2 = tolower(v2) ""
    if (v1 < v2)
        return -1
    return (v1 != v2)
}

function cmp_num_str_val(i1, v1, i2, v2,   n1, n2)
{
     # numbers before string value comparison, ascending order
     n1 = v1 + 0
     n2 = v2 + 0
     if (n1 == v1)
         return (n2 == v2) ? (n1 - n2) : -1
     else if (n2 == v2)
         return 1
     return (v1 < v2) ? -1 : (v1 != v2)
}

function cmp_randomize(i1, v1, i2, v2)
{
    # random order (caution: this may never terminate!)
    return (2 - 4 * rand())
}

BEGIN {
    srand()
    a[2] = "Dvojka"
    a[1] = "Jednicka"
    a[10] = "Desitka"
    a["Ahoj"] = "1"
    a["Ahp"] = 12
    a[3] = "Trojka"
    a[6] = "Šestka"
    a[0] = "Nula"
    a["5ka"] = "retez"
    a[021] = "octal"
    a[5] = 5
    a[""] = "2Empty string"
    a["string"] = "big"
    a["čistě"] = "Nic moc"
    # b[1] = 1; a[7] = b
    # PROCINFO["sorted_in"] = "@ind_num_asc"
    PROCINFO["sorted_in"] = "cmp_str_val"
    for (i in a) {
        printf "%s: %s\n", i, a[i]
    }
}