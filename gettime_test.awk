@include "gettime"

BEGIN {
    date = getlocaltime(time)
    print date
    printf "%d:%d:%d\n", time["hour"], time["minute"], time["second"]
}