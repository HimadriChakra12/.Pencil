$pencil = Join-Path $HOME ".graphite"

$graphites = @(
    @{ Name = "Neovim"; Path = "C:\Users\himadri\AppData\Local\nvim"; get = "nvim" },
    @{ Name = "Github Cli"; Path = "C:\Users\himadri\AppData\Roaming\GitHub CLI"; get = "Github Cli" },
    @{ Name = "Lazygit"; Path = "C:\Users\himadri\AppData\Local\lazygit"; get = "lazygit" },
    @{ Name = "Sumatra PDF"; Path = "C:\Users\himadri\AppData\Local\SumatraPDF"; get = "SumatraPDF" }
#    @{ Name = "qimgv"; Path = "C:\Users\himadri\AppData\Local\SumatraPDF"; get = "qimgv" }
)

foreach ($graphite in $graphites) {
    $sourcePath = Join-Path $pencil $graphite.get
    $targetPath = $graphite.Path

    if (Test-Path $sourcePath) {
        # Create symbolic link if source exists
        New-Item -ItemType SymbolicLink -Path $targetPath -Target $sourcePath -Force | Out-Null
        Write-Host "Linked: $targetPath → $sourcePath" -foreground green
    } else {
        Write-Host "No Graphite found for $targetPath" -foreground red
    }
}

Start-Sleep -Seconds 30
