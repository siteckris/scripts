#List Snapshots
Get-VM -ComputerName (Get-ClusterNode -Cluster Ka-Hypv01.dkpsnet.adv) | Get-VMSnapshot | Select VMName,Name,SnapshotType,CreationTime,ComputerName

# Remove Snapshot 1
Get-VMSnapshot -ComputerName "MyHyperVHost" -VMName "KA-WSUS01" | Remove-VMSnapshot


# Remove Snapshot 2
Get-VMSnapshot -VMName "KA-WSUS01" | Remove-VMSnapshot