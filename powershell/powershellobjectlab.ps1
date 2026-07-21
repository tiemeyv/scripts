Write-Host "Please wait, currently finding all dll's..."
$allDLLs = Get-ChildItem -Path "C:\Windows" -Filter "*.dll" -Recurse -File -ErrorAction SilentlyContinue
$numberofDLLs = $allDLLs.Count
Write-Host "You have $numberofDLLs in your C:\Windows folder"
Write-Host "Please wait while CSV is generated..."
$selectedDLLs = $allDLLs | Select-Object -Last 100
$documentsPath = [Environment\::GetFolderPath("MyDocuments")
$csvPath = Join-Path -Path $documentsPath -Childpath "dll.csv"
$selectedDLLs | Select-Object -Property Fullname, LastWriteTime | Export-Csv -Path $csvPath -NoTypeInformation
Write-Host "Done!"
