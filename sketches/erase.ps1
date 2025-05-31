Invoke-Expression (iwr "https://raw.githubusercontent.com/HimadriChakra12/.Pencil/master/graphites.ps1").Content

foreach ($graphite in $graphites){
    if(test-path $($graphite.Path)) {
        remove-item "$($graphite.Path)" -force
    } else {
        Write-Host "No Graphite of $($graphite.Name): $_" -ForegroundColor Red
    }
}
