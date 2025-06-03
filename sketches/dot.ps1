$pencil = "~/.graphite"
Invoke-Expression (iwr "https://raw.githubusercontent.com/HimadriChakra12/.Pencil/master/graphites.ps1").Content

foreach ($graphite in $graphites){
    $destination = join-path $pencil $graphite.get
    $mkd = join-path $pencil $graphite.got
        if(test-path $($graphite.Path)) {
            if(test-path $destination) {
                write-host "Already a Graphite" -ForegroundColor green
            } else{
                Write-host "Copying Charcoal of $($graphite.Name)"
                    if ($graphite.dir -eq $true){
                        if(Test-path $mkd){
                            Copy-Item -Path $graphite.path -Destination $destination -Recurse -Force
                        } else{
                            mkdir $mkd
                                Copy-Item -Path $graphite.path -Destination $destination -Recurse -Force
                        }
                    } else{
                        Copy-Item -Path $graphite.path -Destination $destination -Recurse -Force
                    }
            }
        } else {
            Write-Host "No Charcoal of $($graphite.Name): $_" -ForegroundColor Red
        }
}
Write-host "Making graphite has completed" -ForegroundColor cyan
