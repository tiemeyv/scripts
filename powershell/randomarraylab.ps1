#Generate 1000 random numbers between 0-1000 stored in a single array
get-random -Maximum 1000 -Minimum 0
#Search the array, if the array containers the number 42, echo "The answer to life, the universe, and everything is found"
if ($number -eq 42) {
    Write-Host "The answer to life, the universe, and everything is found"
    } else {
#Test to see if user's local account exists
if (Get-LocalUser | Where-Object {$_.Name -eq $acct})
#If it doesn't have 42, create a user with the username dadams and the full name "Douglas Adams" on local system
New-LocalUser -Name dadams -FullName "Douglas Adams"
#If dadams user already exists, delete the user and display "So long and thanks for all the fish"
Remove-LocalUser -Name dadams
    Write-Host "So long and thanks for all the fish"
