@include "rewind"

BEGIN {
    print ARGC, ARGV[0], ARGV[1], ARGV[2], ARGV[3]
}
{
    print ARGIND, $0
    if ($0 == "echo Auto" && !processed) {
        processed = 1
        rewind()
    }
}