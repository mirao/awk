BEGIN {
    FPAT = "([^,]*)|(\"[^\"]+\")"
}

{
    print "NF = ", NF
    for (i = 1; i <= NF; i++) {
	
	# if (substr($i, 1, 1) == "\"") {
	# 	len = length($i)
	# 	$i = substr($i, 2, len - 2)    # Get text within the two quotes
	# }
		$i = gensub(/^"(.+)"$/, "\\1", 1, $i) # remove double quotes 
        printf("$%d = <%s>\n", i, $i)
    }
}