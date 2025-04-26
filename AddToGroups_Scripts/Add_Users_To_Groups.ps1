# Add users to groups for IAM Lab

# Add analyst_user1 and intern_user3 to Security_Analysts group
Add-LocalGroupMember -Group "Security_Analysts" -Member "analyst_user1"
Add-LocalGroupMember -Group "Security_Analysts" -Member "intern_user3"

# Add admin_user2 to IT_Administrators group
Add-LocalGroupMember -Group "IT_Administrators" -Member "admin_user2"

Write-Host "Users successfully added to groups!" -ForegroundColor Green
