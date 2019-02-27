$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Feeds_CreateFeed"

$feedOptions = @{
      Name = "TEST";
      Type = "Chocolatey";
      SymbolServerEnabled = $false;
      StripSymbolFiles = $false;
}

$feedConfiguration = @" 
<Inedo.ProGet.Feeds.Nuget.NuGetFeedConfig Assembly="ProGetCoreEx">
<Properties SymbolServerEnabled = "$($feedOptions.SymbolServerEnabled.ToString())" 
            StripSymbolFiles = "$($feedOptions.StripSymbolFiles.ToString())" 
            UseLegacyVersioning = "False" />
</Inedo.ProGet.Feeds.Nuget.NuGetFeedConfig>
 
"@

 $bodyFormFields = @{
   key = $apiKey;
   Feed_Name = $feedOptions.Name;
   FeedType_Name = $feedOptions.Type;
   FeedConfiguration_Xml = $feedConfiguration.Trim()
}

Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"


<# outcome:

StatusCode        : 200
StatusDescription : OK
Content           : 3     <-- so it is giving Feed_id, needed for "Feeds_DeleteFeed"

#>