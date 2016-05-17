BEGIN {
    x="1.01" 
    # We just set x to contain the *string* "1.01" 
    x=x+1 
    # We just added one to a *string* 
    print x 
    # Incidentally, these are comments :)
}
{
    x ^= 2 
    print ($1 % 2) " " x
}