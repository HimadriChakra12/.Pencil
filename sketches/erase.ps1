$graphites = @(
    @{ Name = "Neovim"; Path = "~\AppData\Local\nvim"; get = "nvim" },
    @{ Name = "Github Cli"; Path = "~\AppData\Roaming\GitHub CLI"; get = "Github Cli" },
    @{ Name = "Sumatra PDF"; Path = "~\AppData\Local\SumatraPDF"; get = "SumatraPDF" }
    @{ Name = "yasb"; Path = "~\.config\yasb"; get = "yasb" },
    @{ Name = "scoop"; Path = "~\.config\scoop"; get = "scoop" },
    @{ Name = "qimgv"; Path = "C:\Program Files\qimgv\conf"; get = "qimgv" },
    @{ Name = "Glaze"; Path = "~\.glzr"; get = "glaze" },
    @{ Name = "pwshprofile"; Path = "~\Documents\PowerShell"; get = "pwsh" },
    @{ Name = "psprofile"; Path = "~\Documents\WindowsPowerShell"; get = "ps" },
    @{ Name = "Windows Terminal"; Path = "~\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\"; get = "terminal" }
)

foreach ($graphite in $graphites){
    if(test-path $($graphite.Path)) {
        remove-item "$($graphite.Path)" -force
    } else {
        Write-Host "No Graphite of $($graphite.Name): $_" -ForegroundColor Red
    }
}
