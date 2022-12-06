# Ask user for the group name
$group = Read-Host "Enter the group name"

# Find each group that starts with the group name
$groups = Get-ADGroup -Filter "Name -like '$group*'" -Properties Member

# Loop through each group

foreach ($g in $groups) {
    # Get the members of the group
    $members = Get-ADGroupMember -Identity $g.Name -Recursive
    # Write the group name and members to a file in C:\Temp
    $members | Select-Object Name | Export-Csv -Path "C:\Temp\$($g.Name).csv" -NoTypeInformation
}
#>