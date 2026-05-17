# Deployment Guide

## Prerequisites
- Azure subscription (free tier works)
- Azure CLI installed
- PowerShell 7+ (for automation scripts)

## 1. Log in to Azure
```bash
az login
```

## 2. Create a Resource Group
```bash
az group create --name rg-lz-lab --location westus
```

## 3. Deploy the Landing Zone
```bash
az deployment group create \
  --resource-group rg-lz-lab \
  --template-file ./iac/main.bicep
```

## 4. Run the Automation Scripts
```powershell
./automation/tag-resources.ps1
./automation/shutdown-vms.ps1
./automation/cleanup.ps1
```

## 5. Tear Down (to keep costs at $0)
```bash
az group delete --name rg-lz-lab --yes
```
