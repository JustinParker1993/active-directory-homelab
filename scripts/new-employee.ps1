[CmdletBinding()]
param(
    [Parameter(Mandatory)] [string]$FirstName,
    [Parameter(Mandatory)] [string]$LastName,
    [Parameter(Mandatory)] [ValidateSet("IT", "HR", "Finance")] [string]$Department,
    [Parameter(Mandatory=$false)] [string]$Manager
)

#Username is evaluated once based on standard variables.
$username = "$($FirstName.Substring(0,1))$LastName" | ForEach-Object ToLower
$ouPath   = "OU=$Department,OU=Corp,DC=corp,DC=lab"

Write-Host "Provisioning new employee account..." -ForegroundColor Cyan
Write-Host "  Name:       $FirstName $LastName"
Write-Host "  Username:   $username"
Write-Host "  Department: $Department"
Write-Host "  OU Path:    $ouPath"


# Check if the user already exists
try {
    $existingUser = Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction Stop
    Write-Host "ERROR: A user with username '$username' already exists." -ForegroundColor Red
    return
} 
catch {
    # Expected exception: user doesn't exist, proceed safely.
}

# Create user parameters
$newUserParams = @{
    Name                  = "$FirstName $LastName"
    GivenName             = $FirstName
    Surname               = $LastName
    SamAccountName        = $username
    UserPrincipalName     = "$username@corp.lab"
    Path                  = $ouPath
    AccountPassword       = (ConvertTo-SecureString "Welcome123!" -AsPlainText -Force)
    ChangePasswordAtLogon = $true
    Enabled               = $true
}

if ($Manager) {
    $newUserParams.Add("Manager", $Manager)
}

# Create user and add to department group 
try {
    New-ADUser @newUserParams -ErrorAction Stop
    Write-Host "  [OK] User account created" -ForegroundColor Green

    Add-ADGroupMember -Identity "$Department-Staff" -Members $username -ErrorAction Stop
    Write-Host "  [OK] Added to $Department-Staff group" -ForegroundColor Green
} 
catch {
    Write-Host "  [FAIL] Operation failed: $_" -ForegroundColor Red
}
