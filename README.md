個人用


# Usage
//main
[System.Environment]::SetEnvironmentVariable('GIT_MAIN_NAME', 'アカウント名', 'User')
[System.Environment]::SetEnvironmentVariable('GIT_MAIN_EMAIL', 'メールアドレス', 'User')
//sub
[System.Environment]::SetEnvironmentVariable('GIT_MAIN_NAME', 'アカウント名', 'User')
[System.Environment]::SetEnvironmentVariable('GIT_MAIN_EMAIL', 'メールアドレス', 'User')


# command
switchGit.ps1 -AccountType main or sub