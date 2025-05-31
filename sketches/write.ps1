$pencil = Join-Path $HOME ".graphite"

Invoke-Expression (iwr "https://raw.githubusercontent.com/HimadriChakra12/.Pencil/master/graphites.ps1").Content
foreach ($graphite in $graphites) {
    $sourcePath = Join-Path $pencil $graphite.get
    $targetPath = $graphite.Path

    if (Test-Path $sourcePath) {
        # Create symbolic link if source exists
        New-Item -ItemType SymbolicLink -Path $targetPath -Target $sourcePath -Force | Out-Null
        Write-Host "Linked: $sourcePath → $targetPath " -foreground green
    } else {
        Write-Host "No Graphite found for $targetPath" -foreground red
    }
}

Start-Sleep -Seconds 30
