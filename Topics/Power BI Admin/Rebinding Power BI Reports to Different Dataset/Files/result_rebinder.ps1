Login-PowerBI

$token = (Get-PowerBIAccessToken)["Authorization"]

$body = @{ "datasetId" = "TARGET_DATASET_ID" }

Invoke-WebRequest `
 -Method 'Post' `
 -Uri "https://api.powerbi.com/v1.0/myorg/groups/0b6e10b5-a7ab-4d0a-a4bb-b6088eed815f/reports/f5b7e9ce-8437-4bd3-a0a6-1e5b94ec3192/Rebind" `
 -Headers @{ "Authorization"=$token } `
- Body ($body|ConvertTo-Json) `
 -ContentType "application/json"