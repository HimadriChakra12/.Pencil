$pencil = "~/.graphite"
$graphites = @(
    @{ Name = "Neovim"; Path = "~\AppData\Local\nvim"; get = "nvim" },
    @{ Name = "Github Cli"; Path = "~\AppData\Roaming\GitHub CLI"; get = "Github Cli" },
    @{ Name = "Lazygit"; Path = "~\AppData\Local\lazygit"; get = "lazygit" },
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
    $destination = join-path $pencil $graphite.get
        if(test-path $($graphite.Path)) {
            if(test-path $destination) {
                write-host "Already a Graphite"
            } else{
                Write-host "Copying Charcoal of $($graphite.Name)"
                    Copy-Item -Path $graphite.path -Destination $destination -Recurse -Force
            }
        }else {
            Write-Host "No Charcoal of $($graphite.Name): $_" -ForegroundColor Red
        }
}
Write-host "Making graphite has completed"
