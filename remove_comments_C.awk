# Remove text between /* and */, inclusive
# It removes even multiple occurences on line

BEGIN {
    RS="\f"
}

{
    rid = 1
    orig = $0
    while ((lid = index($orig, "/*")) > 0) {
        comment = substr($orig, lid + 2)
        code = code substr($orig, 1, lid - 1)
        rid = index(comment, "*/") + 2
        $orig = substr($orig, lid + rid + 1)
    }
    print code $orig
}