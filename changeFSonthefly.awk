# run "awk -f changeFSonthefly who.txt"
NR < 4 {FIELDWIDTHS = "1 1"}
NR >= 4 {FS = FS}
{
	$0 = $0; # it's important to reload $0, otherwise change in FS is not performed 
	print $1 ";" $2 ";" PROCINFO["FS"];
}