@include "rev.awk"

BEGIN {
    print "Beginning ..."
    printWithColon(rev("Uzasne"))
    print
    assignArray(a, rev("Ale no\ttak"))
    printArray(a)
    # delarray(a)
    # delete a
    assignArray(a, "Baze")
    printArray(a)
    str = "global"
    myfunc(str)
    print str
    print ret() "retez"
}
function ret() {
    return
}
function myfunc(str)
{
   print str
   str = "zzz"
   print str
}
function printWithColon(ret) {
    if (ret == "")
        ret = $0
    printf "%s:", ret
    return length(ret)
}
function assignArray(a, ret) {
    split(ret, a, /\s/)
}
function printArray(a, i) {
    for (i in a)
        printf(a[i])
    print
}
function delarray(a, i)
{
    for (i in a)
        delete a[i]
}
# /.+\s.+/ {
#     print printWithColon()
#     next
# }
# {
#     print
# }