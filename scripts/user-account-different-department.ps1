# Creates parameters for Sarah Johnson (HR Department) account
$SarahParams = @{
Name = 'Sarah Johnson'
SamAccountName = 'sjohnson'
Path = 'OU=HR,OU=Corp,DC=corp,DC=lab'
AccountPassword = ('P@ssword123!' | ConvertTo-SecureString -AsPlainText -Force)
Enabled = $true
}

# Create Sarah Johnson
New-ADUser @SarahParams

# SVC-Backup (Service Account) parameters
$SvcBackupParams = @{
    Name                 = 'SVC-Backup'
    SamAccountName       = 'svc-backup'
    Path                 = 'OU=ServiceAccounts,OU=Corp,DC=corp,DC=lab'
    AccountPassword      = ('StrOngSvcP@ss!' | ConvertTo-SecureString -AsPlainText -Force)
    PasswordNeverExpires = $true
    CannotChangePassword = $true
    Enabled              = $true
}

# Create SVC-Backup Service Account
New-ADUser @SvcBackupParams
