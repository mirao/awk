	# gawk profile, created Tue Jun 14 20:01:00 2016

	# BEGIN rule(s)

	BEGIN {
		cmd = "sort -n"
		ret = "12;111;Ahoj;čaues;nazdarek;drstkova"
		num = split(ret, pole, ";")
		for (id in pole)
			print(pole[id]) |& cmd
		close(cmd, "to")
		while ((cmd |& getline) > 0)
			print
		close(cmd)
	}

