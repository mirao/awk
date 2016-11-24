BEGIN {
    x = 1.0 / sqrt(3.0)
    n = 6
    for (i = 1; i < 30; i++) {
        n = n * 2.0
        x = x / (sqrt(x * x + 1) + 1)
        printf("%.15f\n", n * x)
    }
}