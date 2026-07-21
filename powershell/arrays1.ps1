$numbers=1..5
$characters="a","b","c"
$strings="Scooby","Shaggy","Velma","Daphne","Fred"

#for ($i=0; $i -lt $strings.count; $i++) {

#0..($strings.count-1) | % {
#    Write-Host $strings[$_]

#$strings | foreach {
#    Write-Host $_

for ($i=($strings.count-1); $i -ge 0; $i--) {
    Write-Host $strings[$i] " " $i
    sleep (1)
}
