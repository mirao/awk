# connects to local HTTP service and returns a response
BEGIN {
    Service = "/inet/tcp/0/localhost/http"
    print "hey" |& Service
    while ((Service |& getline) > 0)
            print $0
    if (ERRNO != "")
        print ERRNO
    close(Service)
}