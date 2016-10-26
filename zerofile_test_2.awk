
# allows processing empty files (awk omits empty files by default)
# e.g. "awk -f zerofile_test.awk my.txt empty.txt my2.txt empty.txt"

BEGINFILE {
    stat = "stat -c %s " FILENAME
    stat | getline size
    if (! size)
        zerofile(FILENAME, ARGIND)
    close(stat)    
}
function zerofile(filename, pos) {
    printf "Empty file: %s, argument nr. %d\n", filename, pos
}

1