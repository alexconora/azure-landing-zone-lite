# Cost Control

This project is designed to run at **$0** by staying inside Azure's free tier.

## Free Resources Used
- Virtual Networks (free)
- Subnets (free)
- Azure Policy (free)
- Resource Groups (free)
- Tags (free)

## What We Avoided
- No Virtual Machines
- No Storage Accounts
- No Databases
- No Paid Licenses

## Cost Safeguards
- Budget alert set at $1/month in Azure Cost Management
- Automation scripts to shut down VMs and clean up orphaned disks
- Resource group can be deleted in one command after testing

## Best Practices Demonstrated
- Tagging for cost allocation (`costCenter` tag)
- Policy enforcement for allowed regions
- Cleanup automation
