# awksed.awk --- do s/foo/bar/g using just print
#    Thanks to Michael Brennan for the idea
#
# orginally by Arnold Robbins, arnold@skeeve.com, Public Domain
# August 1995
#
# modified by Jaromir Obr, it uses FS/OFS instead of RS/ORS
# September 2016

function usage()
{
    print "usage: awksed pat repl [files...]" > "/dev/stderr"
    exit 1
}

BEGIN {
    # validate arguments
    if (ARGC < 3)
        usage()

    FS = ARGV[1]
    OFS = ARGV[2]

    # don't use arguments as files
    ARGV[1] = ARGV[2] = ""
}

# look ma, no hands!
{
    $1 = $1
    print
}
