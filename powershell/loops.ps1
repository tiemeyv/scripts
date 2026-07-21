$name= read-host "Enter your name"
write-host "Your name is" $name "`n"

Write-Host "Super simple countdown..."
5..1

Write-Host "`nFor loop countdown..."
for ($a=5; $a -gt 0; $a--) {
    $a
    sleep(1)
}

Write-Host "`nWhile loop countdown..."
$a=5
while ($a -gt 0){
    $a
    $a--
    sleep(1)
}
