@include "readfile"

function readfile2(file,    tmp, contents)
{
    if ((getline tmp < file) < 0)
        return

    contents = tmp RT
    while ((getline tmp < file) > 0)
        contents = contents tmp RT

    close(file)
    return contents
}

BEGIN {
    file = "my.txt"
    printf readfile(file)
    # print "-----------------"
    printf readfile2(file)
}