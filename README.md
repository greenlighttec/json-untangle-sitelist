# json-untangle-sitelist
Used for converting website lists from a comma separated  list into a JSON file for Untangle firewall import.

## Steps for use
1. Create a list of CSV file with the header **Sites**, enter 1 site per line
2. Import the CSV into powershell using "$variable = Import-CSV -path _path to CSV_"
3. Download the PS1 and dot source it into your Powershell console.
4. Execute the function **Convert-SiteList -sites $variable -exportfile '_path to json file_'**
5. Import the JSON file into the Untangle site list
  
  
This was created specifically for converting a SonicWALL Website URL List from the CFS Firewall to an Untangle. SonicWALL displays all Allowed and Blocked lists in a comma separated list that I was easily able to convert with this function.
