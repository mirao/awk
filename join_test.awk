@include "join"

BEGIN {
    a[1] = "Jaromir"
    a[2] = "Obr"
    a[3] = "Je"
    a[4] = "Super"
    print join(a, 1, 4)
    print join(a, 1, 4, ":")
    print join(a, 1, 4, SUBSEP)
}