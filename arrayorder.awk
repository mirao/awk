BEGIN {
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
    PROCINFO["sorted_in"] = "@ind_num_asc"
    for (i in a) {
        printf "%s: %s\n", i, a[i]
    }
}