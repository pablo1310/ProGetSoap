$apiKey = "BztRw5NIuy5vHqle9ngc"
$apiEndpoint = "http://localhost:8624/api/json/Security_GetRoles"



 $bodyFormFields = @{
   key = $apiKey;
}

$out = Invoke-WebRequest -Uri $apiEndpoint -Method Post -Body $bodyFormFields -ContentType "application/x-www-form-urlencoded"

<#

{"Roles":[{"Role_Id":1,"Role_Name":"Administer","Role_Description":"Allows unrestricted access to all functionality within ProGet.","FeedScopab
le_Indicator":false},{"Role_Id":4,"Role_Name":"Manage Feed","Role_Description":"Allows access to manage feed settings, delete packages, and ove
rwrite packages.","FeedScopable_Indicator":true},{"Role_Id":5,"Role_Name":"Promote Packages","Role_Description":"Allows access to promote packa
ges to a specified feed of the same feed type. Users granted this task should also be granted at least the View & Download Packages task for th
e source feed. ","FeedScopable_Indicator":true},{"Role_Id":2,"Role_Name":"Publish Packages","Role_Description":"Allows access to publish, uploa
d, push, and pull packages from a feed.","FeedScopable_Indicator":true},{"Role_Id":3,"Role_Name":"View & Download Packages","Role_Description":
"Allows access to view and download packages from a feed.","FeedScopable_Indicator":true}],"RoleTasks_Extended":[{"Role_Id":1,"Role_Name":"Admi
nister","Task_Id":8,"Task_Name":"Admin_ConfigureProGet"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":6,"Task_Name":"Admin_ManageConnectors"
},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":6,"Task_Name":"Admin_ManageConnectors"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":7,"T
ask_Name":"Admin_ManageFeed"},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":7,"Task_Name":"Admin_ManageFeed"},{"Role_Id":1,"Role_Name":"Admi
nister","Task_Id":27,"Task_Name":"Admin_ManageScheduledTasks"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":26,"Task_Name":"Admin_ViewSchedu
ledTasks"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":30,"Task_Name":"Credentials_Manage"},{"Role_Id":1,"Role_Name":"Administer","Task_Id"
:31,"Task_Name":"Credentials_ViewPasswords"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":28,"Task_Name":"Feeds_AcceptPackagePromotions"},{"
Role_Id":4,"Role_Name":"Manage Feed","Task_Id":28,"Task_Name":"Feeds_AcceptPackagePromotions"},{"Role_Id":5,"Role_Name":"Promote Packages","Tas
k_Id":28,"Task_Name":"Feeds_AcceptPackagePromotions"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":4,"Task_Name":"Feeds_AddPackage"},{"Role_
Id":2,"Role_Name":"Publish Packages","Task_Id":4,"Task_Name":"Feeds_AddPackage"},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":4,"Task_Name"
:"Feeds_AddPackage"},{"Role_Id":5,"Role_Name":"Promote Packages","Task_Id":4,"Task_Name":"Feeds_AddPackage"},{"Role_Id":1,"Role_Name":"Administ
er","Task_Id":3,"Task_Name":"Feeds_DeletePackage"},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":3,"Task_Name":"Feeds_DeletePackage"},{"Role
_Id":1,"Role_Name":"Administer","Task_Id":2,"Task_Name":"Feeds_DownloadPackage"},{"Role_Id":2,"Role_Name":"Publish Packages","Task_Id":2,"Task_
Name":"Feeds_DownloadPackage"},{"Role_Id":3,"Role_Name":"View & Download Packages","Task_Id":2,"Task_Name":"Feeds_DownloadPackage"},{"Role_Id":
4,"Role_Name":"Manage Feed","Task_Id":2,"Task_Name":"Feeds_DownloadPackage"},{"Role_Id":5,"Role_Name":"Promote Packages","Task_Id":2,"Task_Name
":"Feeds_DownloadPackage"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":9,"Task_Name":"Feeds_OverwritePackage"},{"Role_Id":4,"Role_Name":"Ma
nage Feed","Task_Id":9,"Task_Name":"Feeds_OverwritePackage"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":5,"Task_Name":"Feeds_PullPackage"}
,{"Role_Id":2,"Role_Name":"Publish Packages","Task_Id":5,"Task_Name":"Feeds_PullPackage"},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":5,"T
ask_Name":"Feeds_PullPackage"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":32,"Task_Name":"Feeds_UnlistPackage"},{"Role_Id":4,"Role_Name":"
Manage Feed","Task_Id":32,"Task_Name":"Feeds_UnlistPackage"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":1,"Task_Name":"Feeds_ViewFeed"},{"
Role_Id":2,"Role_Name":"Publish Packages","Task_Id":1,"Task_Name":"Feeds_ViewFeed"},{"Role_Id":3,"Role_Name":"View & Download Packages","Task_I
d":1,"Task_Name":"Feeds_ViewFeed"},{"Role_Id":4,"Role_Name":"Manage Feed","Task_Id":1,"Task_Name":"Feeds_ViewFeed"},{"Role_Id":5,"Role_Name":"P
romote Packages","Task_Id":1,"Task_Name":"Feeds_ViewFeed"},{"Role_Id":1,"Role_Name":"Administer","Task_Id":29,"Task_Name":"Vulnerabilities_Asse
ss"}]}
#>