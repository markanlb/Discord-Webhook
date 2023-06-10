# Server_Discord-Webhook.ps1, v0.2, 2023
#
# By Marcus
#==========================================
$webhookUrl = "Insert your webhook URL here"

$message = ":green_circle: Server is ONLINE"

$jsonPayload = @{
    content = $message
} | ConvertTo-Json

Invoke-RestMethod -Uri $webhookUrl -Method POST -ContentType 'application/json' -Body $jsonPayload