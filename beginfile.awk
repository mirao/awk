BEGINFILE {
    if (ERRNO) {
        printf "File %s error: %s\n", FILENAME, ERRNO
        nextfile
    }
    cnt = 0
}
{ cnt++}
ENDFILE {
    printf "File %s has %d lines\n", FILENAME, cnt
}