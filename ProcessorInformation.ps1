Write-Host "The systems processor is"
Get-CimInstance -ClassName Win32_ComputerSystem | Select-Object -Property SystemType