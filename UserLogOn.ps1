Write-Host "Current user logged in to the system"
Get-CimInstance -ClassName Win32_ComputerSystem -Property UserName