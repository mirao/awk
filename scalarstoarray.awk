BEGIN {
    scalars = "4 2 7 8 10\t20 -3 5"
    split(scalars, a, /\s/)
    for (i in a) {
        sum += a[i]
    }
    printf "Sum: %d\n", sum
}