BEGIN {
    for (i = 0; i < 10; i++) {
        print i
    }
}

{ print }

END {
    for (i = 9; i >= 0 ; i -= 2) {
        print i
    }
}