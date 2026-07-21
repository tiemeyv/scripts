#To run the script: .\final.ps1 -c final.txt
#Use if statement to ensure that script needs the right arguments to run
#Ask for name
#Ask for favorite color
#If directory does exist in C:\users\public
#Then "Bad Luck $YourName" and exit
#Else
#If it doesn't
#Then create directory in C:\users\public of favorite color
#cd into this directory
#Create final.csv with header columns "Firstname",Lastname","Maildomain","Password"
#Data in file should have name in lowercase, email, and -000 added
#-------------------------------------------------------------------------------------
if ($args[0] -ne "-c" -or $args[1] -eq $null -or $args[1] -eq "") {
    Write-Host "You should use the -c flag and a file name"
exit 1
}

$INPUTFILE = $args[1]
$INPUTFILE = Resolve-Path $INPUTFILE

$YOURNAME = Read-Host "Enter your name"
$FAVCOLOR = Read-Host "Enter your favorite color" 

if ( Test-Path -Path "C:\Users\Public\$FAVCOLOR" -PathType Container) {
    Write-Host "Bad Luck $YOURNAME"
exit 1
}
else {
    mkdir "C:\Users\Public\$FAVCOLOR"
    cd "C:\Users\Public\$FAVCOLOR"
}

$HEADER = "number", "SID", "Firstname", "Lastname", "Maildomain", "phone1", "phone2"
$DATA = Import-Csv -delimiter " " -Header $HEADER -Path $INPUTFILE

$DATA | ForEach-Object {
    [PSCustomObject]@{
    Firstname = $_.Firstname.ToLower()
    Lastname = $_.Lastname.ToLower()
    Maildomain = $_.Maildomain
    Password = $_.SID + "-000"
    }
} | Export-Csv -Path "final.csv" -NoTypeInformation