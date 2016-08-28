{
    for (i = 1; i <= NF; i++)
        a[NR][i] = $i 
}
END {
    a[5] = "neco"
    for (i in a) {
        if (isarray(a[i]))    
            for (subin in a[i])
                printf "%s ", a[i][subin]
        else
            printf a[i]        
        printf "\n"
    }

}