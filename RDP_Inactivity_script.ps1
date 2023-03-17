Foreach($i in 1..4800)
{
$wshell = New-Object -ComObject Wscript.Shell
$wshell.SendKeys("%{SCROLLLOCK}")
Start-Sleep -s 58
}
