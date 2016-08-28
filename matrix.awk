# Turn matrix 90 degree clocwise and print it
{
     if (colcnt < NF)
          colcnt = NF
     rawcnt = NR
     for (x = 1; x <= NF; x++) {
          vector[NR, x] = $x
          printf("%s ", $x)
     }
     printf("\n")
}

END {
     for (i = 1; i <= colcnt; i++)
        printf("--")
     printf("\n")
          for (y = 1; y <= colcnt; y++) {
            for (x = rawcnt; x >= 1; --x) {
               reversed[y, rawcnt - x + 1] = vector[x, y]
               printf("%s ", vector[x, y])
          }
          printf("\n")
     }

     PROCINFO["sorted_in"] = "@ind_str_asc"
     for (combined in reversed) {
        split(combined, separate, SUBSEP)
        printf "Index: [%s, %s], element: %s\n", separate[1], separate[2], reversed[combined]
     }
}