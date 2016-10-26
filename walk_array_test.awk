@include "walkarray"
@include "processarray"

BEGIN {
    a[1] = 1
    a["cau"] = "nazdar"
    a[2][1] = 21
    a[2][2] = 22
    a[3] = 3
    a[4][1][1] = 411
    a[4][2] = 42
    a[2]["cau"] = "nazdar"

    walk_array(a, "a")
    print "----------------"
    process_array(a, "a", "do_print", 1)
}

function do_print(name, element)
{
    if (isarray(element))
        print name " is array"
    else    
        printf "%s = %s\n", name, element
}