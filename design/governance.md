# Governance Model

## 1. RBAC (Role-Based Access Control)

| Role | Who Gets It | Purpose |
|------|-------------|---------|
| Owner | Platform admin | Full control of the environment |
| Contributor | App teams | Deploy/manage resources |
| Reader | Auditors / security team | View-only access |

RBAC ensures **least privilege** and prevents accidental changes.

## 2. Tagging Standards

| Tag | Example | Purpose |
|-----|---------|---------|
| owner | alex | Identifies who owns the resource |
| env | lab | Shows environment (lab/dev/test/prod) |
| costCenter | demo | Helps track spending |

## 3. Allowed Regions
- westus
- westus2

## 4. Naming Conventions
Format: `<resourceType>-<project>-<env>`

Examples:
- vnet-lz-lab
- rg-lz-lab
- subnet-mgmt-lab
