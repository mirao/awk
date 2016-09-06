BEGIN { 
        FS=":" 
}
{
        if ($5 ~ /root|Jaromir Obr/) { print }
        else if ($5 ~ /c/) {print $1 ":" $2 ":" $3 ":" $4 ":" $5}
        else {print "no"}
}