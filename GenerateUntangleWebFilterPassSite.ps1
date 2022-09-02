# Untangle Web Filter Pass Sites JSON Builder
# CSV File should be in the format of two columns "Hostname" and "Description"
# Very Rough Draft

$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False


function New-UntangleWebFilterJSONObject {
param(
$hostname,
$description
)

@{
string = $hostname
javaClass = 'com.untangle.uvm.app.GenericRule'
description = $description
enabled = $true
}

}


function Get-UntangleWebFilterJsonImport {
param(
$csvfileimport,
$jsonfileexport
)

if ($csvfileimport -and $jsonfileexport) {

    $SiteList = Import-Csv -Path $csvfileimport

    $SiteObject = foreach ($Site in $SiteList) {
        New-UntangleWebFilterJSONObject -hostname $Site.Hostname -description $site.Description
    }

    [System.IO.File]::WriteAllLines($jsonfileexport, ($SiteObject |ConvertTo-Json -Compress), $Utf8NoBomEncoding)
}

else {"Please provide both a CSV file of sites, and a path to save the JSON file to"}

}
