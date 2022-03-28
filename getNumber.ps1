Get-ADUser -Filter 'enabled -eq $true' -Properties employeenumber, mail |
  Where { $_.employeenumber -eq 36144056930081796 } |
  Select @{Name='Custom';Expression={('{0} {1}' -f $_.employeenumber,$_.mail).Trim()}} |
  Select -ExpandProperty Custom