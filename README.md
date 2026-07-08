# 🏠 Active-Directory-Homelab
## Overview
---
This project demonstrates the deployment and administration of a Windows Active Directory environment in a virtualized lab.
The goal was to simulate common enterprise identity and access management tasks performed by System Administration and SOC analysis.

---
## 🧠Skills Demonstrated 

|||
| :--- | :--- |
| • Active Directory Administration | • Domain Join Operations | 
| • User & Group Management         | • Group Policy Management | • Windows Server 2022
| • DNS Configuration               | • Organizational Unit Design
| • Identity & Access Management Fundamentals | • Windows Server 2022 |
| • Windows Troubleshooting |


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


## 📸 Screenshots

### 🖼️ Full Screenshot Selection Tray 
1. [Active directory domain services install](#1-active-directory-domain-services-install)
2. [Active Directory Users and Computers (Users, Groups, OUD)](#2-active-directory-users-and-computers-users-groups-oud)
3. [DNS Manager](#3-dns-manager)
4. [Domain Controller Configuration](#4-domain-controller-configuration)
5. [Domain Join and Domain User Login](#5-domain-join--domain-user-login)
6. [Group Policy Management](#6-group-policy-management)
7. [Network & DNS Verification](#7-network--dns-verification)

### 1. **Active Directory Domain Services Install**
  Captures the successful install of Active Directory (AD DS) with the server becoming the domain controller.

![Acitve Directory Domain services Install](Screenshots/Active%20Directory%20Domain%20Services%20Install.png)



![Acitve Directory Domain services Install](Screenshots/Active%20Directory%20Domain%20Services%20Install%202.png)

  
  
 

### 2. **Active Directory Users and Computers (Users, Groups, OUD)**

  Created the Organizational Unit.
  
![ADUC](Screenshots/ADUC.png)

 Created the IT users and admins.


![ADUC](Screenshots/ADUC-IT-users.png)


 Created the HR staff.


![ADUC](Screenshots/ADUC-HR-staff.png)


### 3. **DNS Manager**
 Evidence that the Active Directory's DNS infrastructure is operating properly.
  
![DNS Manager](Screenshots/DNS%20Manager.png)

![DNS Manager 2](Screenshots/DNS%20Manager%202.png)
  
  ---

### 4. **Domain Controller Configuration**

Evidence that active Directory was deployed.

![Domain Controller Verification](Screenshots/domain-controller-verification.png)

### 5. **Domain Join & Domain User Login**

 Captured the successful integration with the domain.
 
![Domain Join Confirmation](Screenshots/domain-join-confirmation.png)

 Captures the succeessful authentication of user & staff member, John Smith(jsmith).

![Domain User](Screenshots/domain-user-jsmith-ps.png)

 Captures the succeessful authentication of user & staff member, Sarah Johnson(sjohnson).
 
![Domain User](Screenshots/domain-user-sjohnson-ps.png)

### 6. **Group Policy Management**
 Captures the group policy administration(GPO policy, password policy, login).
 
 
![Group Policy Management](Screenshots/Group%20Policy%20Management.png)


   
 Shows that the group policy was correctly configured and applied.
 
![Group Policy Application](Screenshots/gpo-application.png)


### 7. **Network & DNS Verification
 Verified that DNS had been correctly configured and DNS resolution is functioning properly.
 
![DNS Verification](Screenshots/dns-resolution-test.png)

 Shows that all servers are properly connected to the domain controller(DC01) and that network communication is up and running.
 
![Network Connectivity Test](Screenshots/network-connectivity-test.png)

   
