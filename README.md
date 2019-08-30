# json-untangle-sitelist
Used for converting website lists from a comma separated  list into a JSON file for Untangle firewall import.

## Steps for use
1. Create a list of CSV file with the header **Sites**, enter 1 site per line
2. Import the CSV into powershell using "Import-CSV -path <<path to CSV>>"
  3. Use the for each loop to create the JSON file and import it into the Untangle firewall.
  
  
This was created specifically for converting a SonicWALL Website URL List from the CFS Firewall to an Untangle. SonicWALL displays all Allowed and Blocked lists in a comma separated list that I was easily able to convert with this function.
