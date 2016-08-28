BEGIN {
    rozdel = "split"
    nahrad = "gsub"
    @rozdel("retez\tze ano", a)
    $0 = "Mira:Obr:Dzobr"
    @nahrad(":", ";")
    print $0
    # split("retez\tze ano", a, /\s/)
    print a[2]
    print a[3]
}