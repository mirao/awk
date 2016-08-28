# call it as awk -f arg.awk argument1, argument1 ... 
BEGIN { 
    printf("Number of arguments: %d\n"), ARGC;
    for (i = 0; i < ARGC; i++)
        print ARGV[i]
}