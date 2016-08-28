BEGIN {
    printf "A=%d, B=%d\n", A, B
    ARGC=-1
    # ARGV[3] = "-"
}
{
    print
}
END   { printf "A=%d, B=%d\n", A, B }