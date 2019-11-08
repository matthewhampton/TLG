
Import-Module ActiveDirectory
New-ADUser -Name "j5 Service Account" -SamAccountName "j5-application-user" -UserPrincipalName "j5-application-user@example.com" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true

setspn -A HTTP/app1 example.com\j5-application-user
setspn -A HTTP/app1.example.com example.com\j5-application-user