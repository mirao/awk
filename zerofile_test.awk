@include "zerofile"

# allows processing empty files (awk omits empty files by default)
# e.g. "awk -f zerofile_test.awk my.txt empty.txt my2.txt empty.txt"

function zerofile(filename, pos) {
    printf "Empty file: %s, argument nr. %d\n", filename, pos
}

1