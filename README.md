# 🏠 Active-Directory-Homelab
## Overview
---
## ⚙️Technologies Used
- VMware Workstation Player/Pro
- Windows Server 2022 ISO
- Windows 10 Enterprise ISO
- Active Directory Domain Services (AD DS)
  
## 🔬Lab Architecture
Physical Host (desktop/laptop)
- Hypervisor (VMware Workstation Player/Pro, Hyper-V, or VirtualBox. Your choice.)
  - VM 1 - DC01 (Domain Controller 
      - Windows Server 2022
      - Active Directory Domain Services
      - DNS Server (192.168.10.10)
      - DHCP Server (scope: .100 - .200)
      - Static IP: 192.168.10.10
   - VM 2 - SRV01 (Member Server)
        - Windows Server 2022
        - File shares (HR-Confidential)
        - Optional: RODC role
        - Static IP: 192.168.10.20
    - VM 3 - WIN10-CLIENT
      
      - Windows 10 Enterprise
      - Domain joined to corp. lab

      - Dynamic IP via DHCP (.100 - .200 range)
## Virtual Machines
## Network Topology
## Skills Demonstrated 
## Documentation
## Screenshots
## Future Improvements
