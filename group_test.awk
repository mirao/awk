@include "group.awk"

BEGIN {
    print getgrnam("adm")
    print getgrnam("sambashare")
    print getgrgid("113")
    print getgruser("mira")

    print getgrent()
    print getgrent()
    print getgrent()
    endgrent()
    print getgrent()

}