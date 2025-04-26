# Set Folder Permissions Script for IAM Lab

# Set Read permission for Security_Analysts group on Security_Logs folder
$securityLogsAcl = Get-Acl "Z:\IAM_Lab\Folder_Permissions\Security_Logs"
$securityLogsRule = New-Object System.Security.AccessControl.FileSystemAccessRule("Security_Analysts", "Read", "ContainerInherit,ObjectInherit", "None", "Allow")
$securityLogsAcl.AddAccessRule($securityLogsRule)
Set-Acl "Z:\IAM_Lab\Folder_Permissions\Security_Logs" $securityLogsAcl

# Set Full Control permission for IT_Administrators group on Admin_Tools folder
$adminToolsAcl = Get-Acl "Z:\IAM_Lab\Folder_Permissions\Admin_Tools"
$adminToolsRule = New-Object System.Security.AccessControl.FileSystemAccessRule("IT_Administrators", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
$adminToolsAcl.AddAccessRule($adminToolsRule)
Set-Acl "Z:\IAM_Lab\Folder_Permissions\Admin_Tools" $adminToolsAcl

Write-Host "Folder permissions successfully set!" -ForegroundColor Green
