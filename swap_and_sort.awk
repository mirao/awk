{
		$0 = gensub(/(.+) (.+)/, "\\2 \\1", 1)
		# tmp = $1
		# $1 = $2
		# $2 = tmp
		lines[NR] = $0
}
END {
	# asort(lines)
	sort = "sort"
	for (i = 1; i <= NR; i++) 
		print lines[i]|sort
}