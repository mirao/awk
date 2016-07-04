BEGIN {
    switch (c) {
    case /[aA]/:
        print "Acko"
        break
    case "b":
        print "Bcko"
        break
    case /^[[:alnum:]]/:
        print "Beginning with alphanumeric character"
        break
    default:
        print "Unknown value"
        break
    }
}