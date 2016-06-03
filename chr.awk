@load "test/ord"
@include "test3"

BEGIN {
	for (i=65; i<=65+32+25; i++)
		printf chr(i)
	print "\nAhoj"
}