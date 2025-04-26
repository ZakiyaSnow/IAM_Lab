# Validation Script for IAM Lab
# Checks users, groups, and memberships

Write-Host "`n==== Checking Local Users ====" -ForegroundColor Cyan
Get-LocalUser | Format-Table Name, Enabled, Description

Write-Host "`n==== Checking Local Groups ====" -ForegroundColor Cyan
Get-LocalGroup | Format-Table Name, Description

Write-Host "`n==== Checking Group Memberships ====" -ForegroundColor Cyan
Write-Host "`nSecurity_Analysts Members:" -ForegroundColor Yellow
Get-LocalGroupMember -Group "Security_Analysts" | Format-Table Name, ObjectClass

Write-Host "`nIT_Administrators Members:" -ForegroundColor Yellow
Get-LocalGroupMember -Group "IT_Administrators" | Format-Table Name, ObjectClass

Write-Host "`n==== Validation Complete! ====" -ForegroundColor Green
