try
{
Import-Csv “C:\test\test.csv” | ForEach-Object {
$Name = $_.Name + “test.com”
New-ADUser `
-DisplayName $_.”Dname” `
-Name $_.”Name” `
-GivenName $_.”GName” `
-Surname $_.”Sname” `
-SamAccountName $_.”Name” `
-UserPrincipalName $UPName `
-Office $_.”off” `
-EmailAddress $_.”EAddress” `
-Description $_.”Desc” `
-AccountPassword (ConvertTo-SecureString “vig@123” -AsPlainText -force) `
-ChangePasswordAtLogon $true `
-Enabled $true `
Add-ADGroupMember “OrgUsers” $_.”Name”;
Write-Host "User created and added in the AD group"
}
}
catch
{
$msge=$_.Exception.Message
Write-Host "Exception is" $msge
}