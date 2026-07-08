# Attack Detection Lab 
 
## Overview 
 
This exercise demonstrates how Windows Security logs can be used to detect authentication attacks in an Active Directory environment. 

 



## Objective 
 
Generate authentication events and analyze Windows Security logs to identify indicators of malicious activity. 

 
## Test Scenarios
### 1. Failed Authentication Test 
 
Generated multiple failed login attempts against a domain user account. 



### 2. Successful Authentication 
 
Authenticated using valid domain credentials to compare successful authentication events with failed events. 



### 3. Account Lockout Detection 
 
Verified that repeated failed authentication attempts resulted in an account lockout event. 

 

## Relevant Event IDs 
 
| Event ID | Description | 
|----------|-------------| 
| 4624 | Successful Logon | 
| 4625 | Failed Logon | 
| 4740 | Account Locked Out | 
| 4720 | User Created | 
| 4728 | User Added to Security Group | 



## Detection Analysis 
 
Indicators observed: 
 
- Multiple failed authentication attempts 
- Successful authentication 
- Account lockout event 
- Security log generation 
 
These events demonstrate how a SOC analyst can identify brute-force or password-spraying activity using Windows Security logs. 

 


## Skills Demonstrated 
 
- Windows Event Viewer 
- Security Log Analysis 
- Authentication Monitoring 
- Account Lockout Investigation 
- Active Directory Security 
- Blue Team Fundamentals 
