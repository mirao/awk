# Function to roll a simulated die.
function roll(n) { return 1 + int(rand() * n) }

# Roll 3 six-sided dice and
# print total number of points.
BEGIN {
    system("date --date=\"@" srand(10) "\"")
    print srand(20)
    print srand(30)
    

    for (i = 1; i < 1000; i++) {
        sum = roll(6) + roll(6) + roll(6)
        a[sum]++
    }

    for (i = 3; i <= 18; i++)
        printf("%d: %d\n", i, a[i])
}