BEGIN { 
    FS="\n" 
    RS="" 
    ORS="" 
}
{  
        x=1 
        while ( x<=NF ) { 
                print "\"" $x "\""
                if (x == NF) print "\n"
                else print "," 
                x++ 
        } 
}