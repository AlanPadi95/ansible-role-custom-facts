Get-Process | ForEach-Object {
    $runTime = (Get-Date).ToUniversalTime().ToString("o")
    
    Write-Output @{           
        ps_Name = $_.ProcessName
        ps_StartTime = $_.StartTime
        ps_TotalProcessorTime = $_.TotalProcessorTime
        ps_PagedMemorySize = $_.PagedMemorySize
        ps_WorkingSet = $_.WorkingSet
        ps_VirtualMemorySize = $_.VirtualMemorySize   
        type = "process"
        '@timestamp' = $runTime
    } | ConvertTo-Json
}
