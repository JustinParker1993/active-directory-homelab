# Account Lockout Policy Validation 
 
## Overview 
 
This test validates the Active Directory account lockout policy by configuring a lockout threshold, intentionally generating failed logon attempts, and verifying that the domain controller locks the account and records the event in the Security log. 
 
**Skills Demonstrated** 
- Group Policy Management 
- Active Directory Administration 
- Account Security 
- Windows Event Logging 

  

## Objective 
 
Verify that Active Directory correctly enforces the configured account lockout policy after multiple failed authentication attempts. 

## Configuration 
 
Configured the Default Domain Policy: 
 
- Account Lockout Threshold: 3 Invalid Attempts 
- Lockout Duration: 15 Minutes 
- Reset Counter After: 15 Minutes 

Screenshot: 

/screenshots/account-lockout-policy.png 

 


## Test Procedure 
 
1. Logged into the Windows client. 
2. Attempted to authenticate using an incorrect password three times. 
3. Verified the account became locked. 
4. Opened Active Directory Users and Computers. 
5. Confirmed the account status. 
6. Reviewed Security Event Logs. 

## Results 
 
The account was successfully locked after three failed logon attempts. 
 
Verified: 
- Group Policy enforced correctly 
- User authentication blocked 
- Security logs generated

## Lessons Learned 
 
This test demonstrates how Active Directory protects against brute-force authentication attempts by automatically locking user accounts after repeated failed logons. 

 
