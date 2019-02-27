$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Feeds_GetFeeds"

$feedOptions = @{
    Indicator = 'Y'
}



 $bodyFormFields = @{
   key = $apiKey;
   IncludeInactive_Indicator = $feedOptions.Indicator;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

#$out.Content
#http://localhost:8624/api/soap?WSDL
#it is also working without Indicator value

<#
[{"Feed_Id":1,"Feed_Name":"Default-NuGet","Feed_Description":null,"Active_Indicator":true,"Cache_Connectors_Indicator":true,"DropPath_Text":nul
l,"FeedPathOverride_Text":null,"FeedType_Name":"NuGet","PackageStoreConfiguration_Xml":null,"SyncToken_Bytes":null,"SyncTarget_Url":null,"LastS
ync_Date":null,"AllowUnknownLicenses_Indicator":true,"FeedConfiguration_Xml":"<Inedo.ProGet.Feeds.NuGet.NuGetFeedConfig Assembly=\"ProGetCoreEx
\"><Properties SymbolServerEnabled=\"False\" StripSymbolFiles=\"False\" StripSourceCodeInvert=\"False\" UseLegacyVersioning=\"False\" /></Inedo
.ProGet.Feeds.NuGet.NuGetFeedConfig>"},{"Feed_Id":2,"Feed_Name":"My-Chocolatey","Feed_Description":null,"Active_Indicator":true,"Cache_Connecto
rs_Indicator":true,"DropPath_Text":null,"FeedPathOverride_Text":null,"FeedType_Name":"Chocolatey","PackageStoreConfiguration_Xml":null,"SyncTok
en_Bytes":null,"SyncTarget_Url":null,"LastSync_Date":null,"AllowUnknownLicenses_Indicator":true,"FeedConfiguration_Xml":"<Inedo.ProGet.Feeds.Nu
Get.NuGetFeedConfig Assembly=\"ProGetCoreEx\"><Properties SymbolServerEnabled=\"False\" StripSymbolFiles=\"False\" StripSourceCodeInvert=\"Fals
e\" UseLegacyVersioning=\"False\" /></Inedo.ProGet.Feeds.NuGet.NuGetFeedConfig>"}]
#>