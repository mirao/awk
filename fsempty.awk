BEGIN { FS = "" }
{
     for (i = 1; i <= NF; i = i + 1)
         print "Field", i, "is", $i
}