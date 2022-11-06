#List Snapshots
Get-VM -ComputerName (Get-ClusterNode -Cluster "FQDNHypVClustername") | Get-VMSnapshot | Select VMName,Name,SnapshotType,CreationTime,ComputerName

# Remove Snapshot 1
Get-VMSnapshot -ComputerName "MyHyperVHost" -VMName "ServerName" | Remove-VMSnapshot


# Remove Snapshot 2
Get-VMSnapshot -VMName "ServerName" | Remove-VMSnapshot