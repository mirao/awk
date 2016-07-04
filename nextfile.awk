BEGINFILE {
    print "ARGIND:", ARGIND
    print FILENAME ":"
    if (FILENAME == "blabla.txt") {
        print "File not exists"
        nextfile
    }
}

/ahoj/ {
    nextfile
}
{
        printf "%s: %s, ", FNR, $0
        getjobr()
}

function getjobr()
{
     ret = "Džobr";
     print ret
     nextfile
     print "Next"
}


END {
    print "To je uplny konec"
}

ENDFILE {
    print "To je konec souboru", FILENAME
}