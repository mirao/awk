#!/usr/bin/awk -f
BEGIN {
    for (i = 1; i < ARGC; i++) {
        if (ARGV[i] == "-v") {
            verbose = 1
            print "Verbose mode enabled"
        }
        else if (ARGV[i] == "-q") {
            debug = 1
            print "Debug mode enabled"
        }
        else if (ARGV[i] ~ /^-./) {
            e = sprintf("%s: unrecognized option -- %c",
                    ARGV[0], substr(ARGV[i], 2, 1))
            print e > "/dev/stderr"
        } else
            break
        delete ARGV[i]
    }
}
{
    print
}