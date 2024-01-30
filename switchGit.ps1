param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("main","sub")]
    [string]$AccountType
)

function Set-GitUser {
    param(
        [string]$Name,
        [string]$Email
    )
    git config --global user.name $Name
    git config --global user.email $Email
}

if ($AccountType -eq "main") {
    $name = [System.Environment]::GetEnvironmentVariable('GIT_MAIN_NAME', 'User')
    $email = [System.Environment]::GetEnvironmentVariable('GIT_MAIN_EMAIL', 'User')
    Set-GitUser -Name $name -Email $email
}
elseif ($AccountType -eq "sub") {
    $name = [System.Environment]::GetEnvironmentVariable('GIT_SUB_NAME', 'User')
    $email = [System.Environment]::GetEnvironmentVariable('GIT_SUB_EMAIL', 'User')
    Set-GitUser -Name $name -Email $email
}
