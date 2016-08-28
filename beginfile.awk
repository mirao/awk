BEGINFILE {
    if (ERRNO) {
        printf "File %s error: %s\n", FILENAME, ERRNO
        # nextfile
        exit 10
    }
    cnt = 0
}
{ cnt++}
ENDFILE {
    printf "File %s has %d lines\n", FILENAME, cnt
}
END {
    print "That's the end"
    exit
}