BEGIN {
    stdin = "/dev/stdin"
    PROCINFO[stdin, "READ_TIMEOUT"] = 5000
    while ((result = (getline < stdin)) > 0)
        print $0
    print result, ERRNO
}