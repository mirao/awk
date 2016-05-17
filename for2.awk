BEGIN {
    for ( x=1; x<=21; x++ ) {
        if ( x == 4 ) {
            continue
        }
        print "iteration",x
    }
}