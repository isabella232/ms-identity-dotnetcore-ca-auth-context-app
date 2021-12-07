Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
$secpasswd = ConvertTo-SecureString "Abeyd@123" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("alexbeyd@kkaad.onmicrosoft.com", $secpasswd)
$tenantId = "979f4440-75dc-4664-b2e1-2cafa0ac67d1"

.\Cleanup.ps1 -Credential $mycreds -TenantId $tenantId
.\Configure.ps1 -Credential $mycreds -TenantId $tenantId