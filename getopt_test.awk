@include "getopt"

BEGIN {
    # Optind = 1
    print ARGV[0], ARGV[1], ARGV[2], ARGV[3]
    while ((_go_c = getopt(ARGC, ARGV, "a1:2:")) != -1) {
        print Optind ":" _go_c
        if (_go_c ~ /^[[:digit:]]$/)
            Optind--
    }
}
# example: awk -f getopt_test.awk -v _getopt_test=1 -a -b22 987