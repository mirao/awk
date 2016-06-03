# print content of file, read its name from keyboard
BEGIN {
	printf "Enter a file name: "
	getline filename < "-"
	if (system("[ -f " filename " ]") == 0) {
			while (getline < filename) {
					print $0
			}
	}
}
