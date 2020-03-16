Get-Service | ForEach-Object {
    $runTime = (Get-Date).ToUniversalTime().ToString("o")
    
    Write-Output @{           
        service_name = $_.Name
        service_displayname = $_.DisplayName
        service_starttype = "$($_.StartType)"
        service_status = "$($_.Status)"       
        type = "service"
        '@timestamp' = $runTime
    } | ConvertTo-Json
}