# Removes unattached disks to prevent unnecessary charges
Write-Host "Finding orphaned disks..."

$orphanDisks = Get-AzDisk | Where-Object { $_.ManagedBy -eq $null }

foreach ($disk in $orphanDisks) {
    Write-Host "Removing orphaned disk: $($disk.Name)"
    Remove-AzDisk -ResourceGroupName $disk.ResourceGroupName -DiskName $disk.Name -Force
}

Write-Host "Cleanup complete."
