BEGIN {
    FS = "\t+"
    OFS = "\t"
}
{
    $2 = gensub(/(.)(.*)(.)/, "\\3\\2\\1", 1, $2)
    print
}