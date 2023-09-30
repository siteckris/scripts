#In case you paste this in to PowerShell ISE and press run script:)

#Check if IPv4 IP address is preferred
ping $env:COMPUTERNAME

#If the reply is IPv6 address, run following registry setting to just prefer ipv4 and reboot
New-ItemProperty “HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters\” -Name “DisabledComponents” -Value 0x20 -PropertyType “DWord”

#If DisabledComponents exists, use the set cmdlet instead
Set-ItemProperty “HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters\” -Name “DisabledComponents” -Value 0x20

#You need to reboot the computer in order for the changes to take effect
Restart-Computer
