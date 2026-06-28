# Create a few more users in different OUs
New-ADUser -Name 'Sarah Johnson' -SamAccountName
' sjohnson'
-Path 'OU=HR, OU=Corp,DC=corp,DC=lab' >
-AccountPassword (ConvertTo-SecureString 'P@ssword123!' -AsPlainText -Force)
-Enabled $true

# Create a service account (no interactive login)
New-ADUser -Name 'SVC-Backup' -SamAccountName ' svc-backup'
-Path 'OU=ServiceAccounts, OU=Corp,DC=corp,DC=lab'
-AccountPassword (ConvertTo-SecureString 'StrOngSvcP@ss!' -AsPlainText -Force) ~
-PasswordNeverExpires $true *
-CannotChangePassword $true
-Enabled $true