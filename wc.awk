#!/usr/bin/gawk -f
#

#
# wc.awk - count lines, words and charcters.
#
# NOTE: run the command with option --characters-as-bytes
# or in enviroment LANG=C, otherwise bytes > 127 will be handled as UTF-8 chars

BEGIN {
	while (getline > 0) {
		lines++;
		chars = chars + length($0) + length(RT);
		words = words + split($0, x, /[[:space:]]+/);
		}

	printf ("%d %d %d\n", lines, words, chars);
	exit (0);
}