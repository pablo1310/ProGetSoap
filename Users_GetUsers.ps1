$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Users_GetUsers"



 $bodyFormFields = @{
   key = $apiKey;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

#$out.Content

<#

{"Users":[{"User_Name":"Admin","Display_Name":"Administrator","Email_Address":null,"Salt_Bytes":"sBaGqDLnTykFGQ==","Password_Bytes":"6R53UEz8Li
A/yIyaWf0HAbc9zQ4="},{"User_Name":"Anonymous","Display_Name":"Anonymous User","Email_Address":null,"Salt_Bytes":null,"Password_Bytes":null}],"U
serGroups":[{"User_Name":"Admin","Group_Name":"Administrators"}]}

#>