# Scripts made to improve QoL
## AD
### AD-EXPORT-GS-MEMBERS.ps1

To use this script, you need to have the AzureAD module installed. You can install it with the following command:

		Install-Module -Name AzureAD

This script will export all the members of all the groups that starts with the user input to a CSV file. The CSV file will contain the following columns:

* DisplayName
* GroupName

