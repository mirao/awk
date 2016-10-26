# prints time over daytime service
BEGIN {
    # TCP
    Service = "/inet/tcp/0/localhost/daytime"
    if ((Service |& getline) > 0)
        print $0
    else if (ERRNO != "")
        print ERRNO
    close(Service)

    # UDP
    Service = "/inet/udp/0/localhost/daytime"
    print "hey" |& Service
    if ((Service |& getline) > 0)
        print $0
    else if (ERRNO != "")
        print ERRNO
    close(Service)
}