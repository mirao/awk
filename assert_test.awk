@include "assert"
# test passes: "awk -f assert_test matrix.txt"
# test fails: "awk -f assert_test matrix2.txt"

function myfunc(a, b)
{
    assert(a <= 5 && b >= 1, "a <= 5 && b >= 1")
    print a, b
}

BEGIN {
    print "Beginning ..."
}

{
    myfunc($1, $2)
}

END {
    print "Finishing ..."
}