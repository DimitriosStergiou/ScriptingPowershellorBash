Write-Host "The following are the users and the owners"
Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property *user*