BEGIN {
    lineup = "%-10s%10s\n"
    printf lineup, "Month", "Crates"
    printf lineup, "-----", "------"
}
{ 
    printf lineup, $1, $2 
}