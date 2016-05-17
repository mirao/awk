BEGIN {
    FS="[[:blank:]]+"
}
$2 ~ /.+/ { print $2 }