$1 == "START" { if (interested) print; interested = 1; next }
$1 == "END"     { interested = 0; next }
interested      { print }