$pencil = "~/.graphite"
$graphites = @(
    @{ Name = "Neovim"; Path = "~\AppData\Local\nvim"; get = "nvim" },
    @{ Name = "Github Cli"; Path = "~\AppData\Roaming\GitHub CLI"; get = "Github Cli" },
    @{ Name = "Lazygit"; Path = "~\AppData\Local\lazygit"; get = "lazygit" },
    @{ Name = "Sumatra PDF"; Path = "~\AppData\Local\SumatraPDF"; get = "SumatraPDF" }
    @{ Name = "scoop"; Path = "~\.config\scoop"; get = "scoop" }
    @{ Name = "qimgv"; Path = "C:\Program Files\qimgv\conf"; get = "qimgv" }
    @{ Name = "Glaze"; Path = "~\.glzr"; get = "glaze" }
)

foreach ($graphite in $graphites){
    $destination = join-path $pencil $graphite.get
    if(test-path $($graphite.Path)) {
        Write-host "Copying Graphite of $($graphite.Name)"
        Copy-Item -Path $graphite.path -Destination $destination -Recurse -Force
    } else {
        Write-Host "No Graphite of $($graphite.Name): $_" -ForegroundColor Red
    }
}
