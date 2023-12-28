Uninstall Microsoft Defender using powershell
`Uninstall-WindowsFeature -Name Windows-Defender`

Filter on name  
`Where-Object {$_.name -like "*win*"}'`