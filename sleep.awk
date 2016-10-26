BEGIN {
  do {
    exit_code = system("trap 'exit 1' 2; sleep 10")
    print "exit_code: " exit_code
  } while (exit_code == 0)
}

# another variant
# BEGIN {
#   do {
#     exit_code = system("sleep 10 && exit 27")
#     print "exit_code: " exit_code
#   } while (exit_code != 0)
# }