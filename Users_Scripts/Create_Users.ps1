# Create users
New-LocalUser "analyst_user1" -Password (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -FullName "Security Analyst 1" -Description "Security Analyst User"

New-LocalUser "admin_user2" -Password (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -FullName "Admin User 2" -Description "Administrator Level User"

New-LocalUser "intern_user3" -Password (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -FullName "Intern User 3" -Description "Intern Level User"
