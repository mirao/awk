# prints time using daytime service
BEGIN {
    # TCP way
    Service = "/inet/tcp/0/localhost/daytime"
    if ((Service |& getline) > 0)
        print $0
    else if (ERRNO != "")
        print ERRNO
    close(Service)

    # UDP way
    Service = "/inet/udp/0/localhost/daytime"
    print "hey" |& Service
    if ((Service |& getline) > 0)
        print $0
    else if (ERRNO != "")
        print ERRNO
    close(Service)
}