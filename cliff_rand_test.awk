@include "cliff_rand"

BEGIN {
    for (i = 1; i <= 10000; i++)
        a[int(9 * cliff_rand()) + 1]++

    for (i in a)
        printf "%d: %d times\n", i, a[i]    
}