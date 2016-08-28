{
    #
    # convert input to upper case
    #
    
    # bash -c must be used otherwise <<< cannot be inerpreted (default dash doesn't support it)
    system("bash -c \"tr a-z A-Z <<<\\\"" $0 "\\\"\"")
    
    print "tr a-z A-Z <<<\"" $0 "\"" | "/bin/bash" # 1st alternative, works for national characters too
    print toupper($0) # do the same easily directly in awk
}