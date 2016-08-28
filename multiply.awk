BEGIN {
        i = 10
        multiply("i", 2)
        print i
}
function multiply(i, amount)
{
    return SYMTAB[i] *= amount
}