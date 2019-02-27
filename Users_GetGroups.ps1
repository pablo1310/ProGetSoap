$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Users_GetGroups"



 $bodyFormFields = @{
   key = $apiKey;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

<#
PS C:\Users\Administrator.LABO> $out.Content
[{"Group_Name":"Administrators"}]
#>