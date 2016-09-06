@include "shellquote"

function shell_quote(s,             # parameter
    SINGLE, QSINGLE, i, X, n, ret)  # locals
{
   SINGLE = "a"
   return SINGLE
}

function test(a) { # OK
    return 23
}

BEGIN {
    SINGLE = "b"
    print shell()
    print shell_quote("retezec a 'blabol' jine")
    print SINGLE
}