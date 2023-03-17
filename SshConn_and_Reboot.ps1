Write-Host "Enter the remote server IP address:"
$server_ip = Read-Host
Write-Host "Enter the remote server username:"
$username = Read-Host
ssh $username@${server_ip} 'sudo reboot'