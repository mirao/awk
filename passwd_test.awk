@include "passwd"

BEGIN {
    print getpwnam("mira")
    print getpwuid(5)
    print "--------------------"
    items = 4
    for (i = 1; i <= items; i++) {
        print getpwent()
    }

    # print all passwd items
    # while (entry = getpwent())
    #     print entry

}