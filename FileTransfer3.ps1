Write-Host "Enter the file path:"
$file_path = Read-Host
if (Test-Path $file_path) {
# Ask for server IP and username
Write-Host "Enter the remote server IP address:"
$server_ip = Read-Host
Write-Host "Enter the remote server username:"
$username = Read-Host

pscp -scp ${file_path} $username@${server_ip}:/mnt/persistent/update
Write-Host "File successfully uploaded to the remote server"}
else {
Write-Host "File not found at the given path. Please enter a valid file path"
}
Write-Host "Enter a file path where the update is"
$file_path2 = Read-Host
#ssh $username@${server_ip} '/opt/syscom/bin/SwUpdate cmd=3 activate=0 transfer=0 file=$file_path2'
 
echo y | &("C:\Program Files\PuTTY\plink.exe") -pw "**********" root@192.168.160.19 "/opt/syscom/bin/SwUpdate cmd=3 activate=0 transfer=0 file=$file_path2"
