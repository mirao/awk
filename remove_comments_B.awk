# Remove text between /* and */, inclusive
# It removes even multiple occurences on line

BEGIN {
    findleft = 1
    leftmark = "/*"
    rightmark = "*/"
}

{
    leftpart = ""
    rightpart = $0
    nocomment = ""
    while (!findleft || (idleft = index(rightpart, leftmark)) > 0) {
            if (findleft) {
                leftpart = substr(rightpart, 1, idleft - 1) # part before comment
                commentpart = substr(rightpart, idleft + 2) # part after /*
            }
            else # searching for */ that was not found on previous line
                commentpart = rightpart
            
            nocomment = nocomment leftpart # prepare the part without comments
            
            idright = index(commentpart, rightmark) # index of */
            if (idright > 0) {
                rightpart = substr(commentpart, idright + 2) # part after */
                findleft = 1 # */ found, next time find /*
            }
            else { # */ not found
                findleft = 0 # find */ on the next line
                if (nocomment != "")
                    print nocomment
                next
            }
    }
    
    # /* not found
    nocomment = nocomment rightpart
    findleft = 1 # find /* on the next line
    
    if (nocomment != "")
        print nocomment
}