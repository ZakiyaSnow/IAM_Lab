# Create groups for IAM Lab

# Create Security Analysts Group
New-LocalGroup -Name "Security_Analysts" -Description "Group for security analysts with read access to logs."

# Create IT Administrators Group
New-LocalGroup -Name "IT_Administrators" -Description "Group for administrators with full control over admin tools."

Write-Host "Groups created successfully!" -ForegroundColor Green
