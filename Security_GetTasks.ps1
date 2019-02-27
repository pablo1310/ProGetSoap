$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Security_GetTasks"



 $bodyFormFields = @{
   key = $apiKey;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

#$out.Content
#http://localhost:8624/api/soap?WSDL

<#
PS C:\Users\Administrator.LABO> $out.Content
[{"Task_Id":1,"Task_Name":"Feeds_ViewFeed","Feed_Scopeable_Indicator":true},{"Task_Id":2,"Task_Name":"Feeds_DownloadPackage","Feed_Scopeable_In
dicator":true},{"Task_Id":3,"Task_Name":"Feeds_DeletePackage","Feed_Scopeable_Indicator":true},{"Task_Id":4,"Task_Name":"Feeds_AddPackage","Fee
d_Scopeable_Indicator":true},{"Task_Id":5,"Task_Name":"Feeds_PullPackage","Feed_Scopeable_Indicator":true},{"Task_Id":6,"Task_Name":"Admin_Mana
geConnectors","Feed_Scopeable_Indicator":true},{"Task_Id":7,"Task_Name":"Admin_ManageFeed","Feed_Scopeable_Indicator":true},{"Task_Id":8,"Task_
Name":"Admin_ConfigureProGet","Feed_Scopeable_Indicator":false},{"Task_Id":9,"Task_Name":"Feeds_OverwritePackage","Feed_Scopeable_Indicator":tr
ue},{"Task_Id":26,"Task_Name":"Admin_ViewScheduledTasks","Feed_Scopeable_Indicator":false},{"Task_Id":27,"Task_Name":"Admin_ManageScheduledTask
s","Feed_Scopeable_Indicator":false},{"Task_Id":28,"Task_Name":"Feeds_AcceptPackagePromotions","Feed_Scopeable_Indicator":true},{"Task_Id":29,"
Task_Name":"Vulnerabilities_Assess","Feed_Scopeable_Indicator":false},{"Task_Id":30,"Task_Name":"Credentials_Manage","Feed_Scopeable_Indicator"
:false},{"Task_Id":31,"Task_Name":"Credentials_ViewPasswords","Feed_Scopeable_Indicator":false},{"Task_Id":32,"Task_Name":"Feeds_UnlistPackage"
,"Feed_Scopeable_Indicator":true}]
#>