@include "ftrans"

BEGIN {
    print "Begin"
}
{
    print FILENAME, "middle"
}
END {
    print "End"
}

function beginfile(file) {
    print file, "beginfile"
}

function endfile(file) {
    print file, "endfile"
}