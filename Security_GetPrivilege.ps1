$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Security_GetPrivileges"



 $bodyFormFields = @{
   key = $apiKey;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

<#
PS C:\Users\Administrator.LABO> $out.Content
[]

PS C:\Users\Administrator.LABO>
#>