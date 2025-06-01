# .Pencil/graphites.ps1
$Graphites = @(
    @{ Name = "Neovim"; Path = "$env:USERPROFILE\AppData\Local\nvim"; Get = "nvim" },
    @{ Name = "Github Cli"; Path = "$env:USERPROFILE\AppData\Roaming\GitHub CLI"; Get = "Github Cli" },
    @{ Name = "Sumatra PDF"; Path = "$env:USERPROFILE\AppData\Local\SumatraPDF"; Get = "SumatraPDF" },
    @{ Name = "yasb"; Path = "$env:USERPROFILE\.config\yasb"; Get = "yasb" },
    @{ Name = "scoop"; Path = "$env:USERPROFILE\.config\scoop"; Get = "scoop" },
    @{ Name = "qimgv"; Path = "C:\Program Files\qimgv\conf"; Get = "qimgv" },
    @{ Name = "Glaze"; Path = "$env:USERPROFILE\.glzr"; Get = "glaze" },
    @{ Name = "pwshprofile"; Path = "$env:USERPROFILE\Documents\PowerShell"; Get = "pwsh" },
    @{ Name = "psprofile"; Path = "$env:USERPROFILE\Documents\WindowsPowerShell"; Get = "ps" },
    @{ Name = "Windows Terminal"; Path = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\"; Get = "terminal" }
    @{ Name = "Winget"; Path = "C:\Users\himadri\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"; Get = "winget-settings.json" }
)

