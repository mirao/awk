BEGIN {
    srand()
    num = int(rand() * 100) + 1
    print "I have a number between 1-100"
    printf "Guess: "
    while (1) {
        getline <"/dev/stdin"
        if ($0 == num)
            break
        else
            if ($0 > num)
                printf "Your number is greater", num
            else
                printf "Your number is less", num
            printf ", try again: "
    }
    print "You have hit it!"
}