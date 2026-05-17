# Applies standard governance tags to all resources
$tags = @{
    owner      = "alex"
    env        = "lab"
    costCenter = "demo"
}

$resources = Get-AzResource

foreach ($res in $resources) {
    Write-Host "Tagging resource: $($res.Name)"
    Set-AzResource -ResourceId $res.ResourceId -Tag $tags -Force
}
