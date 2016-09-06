# @include "ord"
@load "ordchr"

### test code ####
BEGIN {
   for (;;) {
       printf("enter a character: ")
       if (getline var <= 0)
           break
       printf("ord(%s) = %d\n", var, ord(var))
   }
}