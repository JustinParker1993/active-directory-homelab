# 🏠 Active-Directory-Homelab
## Overview
---
This project demonstrates the deployment and administration of a Windows Active Directory environment in a virtualized lab.
The goal was to simulate common enterprise identity and access management tasks performed by System Administration and SOC analysis.

---
## Skills Demonstrated 
• Active Directory Administration → Windows Server 2022 → DNS Configuration 
• User & Group Management
• Group Policy Management
• Domain Join Operations
• Organizational Unit Design
• Identity & Access Management Fundamentals
• Windows Troubleshooting
## ⚙️Technologies Used
• VMware Workstation Player/Pro
• Windows Server 2022 ISO
• Windows 10 Enterprise ISO
• Active Directory Domain Services (AD DS)
  
## 🔬Lab Architecture
Physical Host (desktop/laptop)
- Hypervisor (VMware Workstation Player/Pro, Hyper-V, or VirtualBox. Your choice.)
  - VM 1 - DC01 (Domain Controller)
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
## Documentation
## 📸 Screenshots
1. **Active Domain Directory Services Install**
  <img width="500" height="761" alt="Active Directory Domain Services Install" src="https://github.com/user-attachments/assets/297c1f0f-bfae-4d71-aee1-332cd29b6260" />
  ---
  
  <img width="1687" height="766" alt="Active Directory Domain Services Install 2" src="https://github.com/user-attachments/assets/a10ee8e1-a2e0-4597-b6b3-958d3c60fcb0" />

2. **Active Directory Users and Computers (Users, Groups, OUD)**
   <img width="940" height="639" alt="ADUC" src="https://github.com/user-attachments/assets/8128e8f5-0982-4c28-8099-bbdca823e568" />

3. **DNS Manager**
  <img width="865" height="617" alt="DNS Manager" src="https://github.com/user-attachments/assets/796aefb7-d50a-46ab-9ef2-74dad1b31275" />
  ---

   <img width="974" height="604" alt="DNS Manager 2" src="https://github.com/user-attachments/assets/8a122911-e070-41f9-ad72-394f94fcc2b3" />

4. **Group Policy Management**
   <img width="861" height="603" alt="Group Policy Management" src="https://github.com/user-attachments/assets/f0cc4715-14f8-4359-811f-686fc5f52fff" />

   
