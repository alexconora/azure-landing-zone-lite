# Shuts down all VMs tagged env=lab to save cost
Write-Host "Shutting down all VMs with tag 'env=lab'..."

$vmList = Get-AzVM -Status | Where-Object { $_.Tags.env -eq "lab" }

foreach ($vm in $vmList) {
    Write-Host "Stopping VM: $($vm.Name)"
    Stop-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName -Force
}

Write-Host "Done."
