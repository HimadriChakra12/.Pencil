# .Pencil/graphites.ps1
$Graphites = @(
    @{ Name = "Neovim"; Path = "$env:USERPROFILE\AppData\Local\nvim"; Get = "nvim"; dir = $false; Got = "nvim" },
    @{ Name = "Github Cli"; Path = "$env:USERPROFILE\AppData\Roaming\GitHub CLI"; Get = "Github Cli"; dir = $false; Got = "Github Cli" },
    @{ Name = "Sumatra PDF"; Path = "$env:USERPROFILE\AppData\Local\SumatraPDF"; Get = "SumatraPDF"; dir = $false; Got = "SumatraPDF" },
    @{ Name = "Sumatra PDF"; Path = "C:\Users\IT\swiss\sumatra\SumatraPDF-settings.txt"; Get = "SumatraPDF"; dir = $false; Got = "SumatraPDF" },
    @{ Name = "yasb"; Path = "$env:USERPROFILE\.config\yasb"; Get = "yasb"; dir = $false; Got = "yasb" },
    @{ Name = "VS"; Path = "$env:USERPROFILE\.vscode"; Get = ".vscode"; dir = $false; Got = ".vscode" },
    @{ Name = "scoop"; Path = "$env:USERPROFILE\.config\scoop"; Get = "scoop"; dir = $false; Got = "scoop" },
    @{ Name = "fastfetch"; Path = "$env:USERPROFILE\.config\fastfetch"; Get = "fastfetch"; dir = $false; Got = "fastfetch" },
    @{ Name = "qimgv"; Path = "C:\Program Files\qimgv\conf"; Get = "qimgv"; dir = $false; Got = "qimgv" },
    @{ Name = "Glaze"; Path = "$env:USERPROFILE\.glzr"; Get = "glaze"; dir = $false; Got = "glaze" },
    @{ Name = "pwshprofile"; Path = "$env:USERPROFILE\Documents\PowerShell"; Get = "pwsh"; dir = $false; Got = "pwsh" },
    @{ Name = "psprofile"; Path = "$env:USERPROFILE\Documents\WindowsPowerShell"; Get = "ps"; dir = $false; Got = "ps" },
    @{ Name = "Windows Terminal"; Path = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\"; Get = "terminal"; dir = $false; Got = "terminal" }
    @{ Name = "Winget"; Path = "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json"; Get = "Winget/settings.json"; dir = $true; Got = "Winget" }
    @{ Name = "Visual Studio Code"; Path = "$env:USERPROFILE\AppData\Roaming\Code\User\settings.json"; Get = "Code/settings.json"; dir = $true; Got = "Code" }
    @{ Name = "Winstate"; Path = "$env:USERPROFILE\winstate.json"; Get = "wry/winstate.json"; dir = $true; Got = "wry" }
    @{ Name = "State"; Path = "$env:USERPROFILE\state"; Get = "State"; dir = $false; Got = "State" }
    @{ Name = "Swiss Package"; Path = "C:\farm\wheats\Swissknife\package.json"; Get = "Swissknife\package.json"; dir = $true; Got = "Swissknife" }
    @{ Name = "jd2 cfg"; Path = "C:\Program Files\JDownloader\cfg"; Get = "JDownloader2"; dir = $false; Got = "JDownloader2" }
    @{ Name = "mpv"; Path = "$env:USERPROFILE\AppData\Roaming\mpv"; Get = "mpv"; dir = $false; Got = "mpv" }
    @{ Name = "startup"; Path = "$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"; Get = "startup"; dir = $false; Got = "startup" }
)

