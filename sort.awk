BEGIN {
    FS = "\t+"
    OFS = "\t"
}
{
if (NR<2) 
	print
else if (NR > 2)
	print
}