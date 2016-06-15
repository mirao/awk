# copies input to output
# shows random line from /etc/passwd if line begins with @random
BEGIN {
    srand()
    passwd = "/etc/passwd"
    ("wc -l " passwd) | getline count # number of lines in passwd file
}
{
     if ($1 == "@random") {
          line = int(count * rand()) + 1 # generate random line number
          tmp = "tail -" line " " passwd "|head -1" # get random line
          tmp | getline
          close(tmp)
     }
     print
}