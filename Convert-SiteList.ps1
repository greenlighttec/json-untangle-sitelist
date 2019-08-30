function Convert-SiteList ($sites,$exportfile) {
  $json = foreach ($s in $sites) {
        @{
            blocked = 'null'
            flagged = 'null'
            string = "$($s.sites)"
            javaClass = 'com.untangle.uvm.app.GenericRule'
            name = "null"
            description = ""
            readyOnly = 'null'
            id = "$($sites.IndexOf($s)+1)"
            category = 'null'
            enabled = 'true'
        }}
  $json|ConvertTo-Json |Out-File $exportfile
}
