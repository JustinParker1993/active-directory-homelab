# Create standard users and sets user parameters 
$UserParams = @{
    Name                  = 'John Smith'
    GivenName             = 'John'
    Surname               = 'Smith'
    SamAccountName        = 'jsmith'
    UserPrincipleName     = 'jsmith@corp.lab'
    Path                  = 'OU=IT,OU=Corp,DC=corp,DC=lab'
    AccountPassword       = ('P@ssword123!' | ConvertTo-SecureString  -AsPlainText -Force)
    Enabled               = $true
    ChangePasswordAtLogon = $true
    }

# Creates the user account
    New-ADUser @UserParams

# Adds a "password never expires" flag after creation
Set-ADUser -Identity 'jsmith' -PasswordNeverExpires $true 
