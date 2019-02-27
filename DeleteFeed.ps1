$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Feeds_DeleteFeed"

$feedOptions = @{
      id = 3
}



 $bodyFormFields = @{
   key = $apiKey;
   Feed_Id = $feedOptions.id;

}

Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

<# empty outcome

StatusCode        : 200
StatusDescription : OK
Content           : {}     <-- nothing there

#> 