# Network Design

## 1. Virtual Network (VNet)
- **Name:** lz-vnet
- **Address Space:** 10.0.0.0/16

This VNet is the main network for the landing zone. The /16 range gives plenty of room for future subnets.

## 2. Subnets

### Management Subnet
- **Name:** mgmt-subnet
- **Address Prefix:** 10.0.1.0/24
- **Purpose:** Used for admin tools, jumpboxes, or management services.

### Workload Subnet
- **Name:** app-subnet
- **Address Prefix:** 10.0.2.0/24
- **Purpose:** Used for applications, services, or VMs.

## 3. Why Subnets Matter
Subnets help you:
- Separate traffic
- Apply different security rules
- Control access
- Organize workloads
- Scale in the future
