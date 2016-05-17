BEGIN {
    x=1
    while (1) {
        if ( x == 4 ) {
            x++
            continue
        }
        print "iteration",x
        if ( x > 20 ) {
            break
        }
        x++
    }
} 