@include "round"

# run as "awk -M -f round_test.awk"
BEGIN {
    num = -1.1
    ROUNDMODE="N"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="Z"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="U"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="D"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="A"
    printf("%.2f %0.f %d\n", num, num, round(num))
    
    num = 1.1
    ROUNDMODE="N"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="Z"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="U"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="D"
    printf("%.2f %0.f %d\n", num, num, round(num))
    ROUNDMODE="A"
    printf("%.2f %0.f %d\n", num, num, round(num))
}