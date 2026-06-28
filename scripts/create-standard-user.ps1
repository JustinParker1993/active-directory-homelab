# Create standard users

New-ADUser -Name 'John Smith'
-GivenName 'John'

-Surname 'Smith'

-SamAccountName 'jsmith' >
-UserPrincipalName 'jsmith@corp.lab'
-Path 'OU=IT,OU=Corp,DC=corp,DC=lab'
-AccountPassword (ConvertTo-SecureString 'P@ssword123!' -AsPlainText -Force)
-PasswordNeverExpires $false *
-Enabled $true