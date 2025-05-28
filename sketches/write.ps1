$pencil = "~/.graphite"
$graphites = @(
    @{ Name = "Neovim"; Path = "C:\Users\himadri\AppData\Local\nvim"; get = "nvim"},
    @{ Name = "Github Cli"; Path = "C:\Users\himadri\AppData\Roaming\GitHub CLI"; get = "Github Cli"},
    @{ Name = "Lazygit"; Path = "C:\Users\himadri\AppData\Local\lazygit"; get = "lazygit"},
    @{ Name = "Sumatra PDF"; Path = "C:\Users\himadri\AppData\Local\SumatraPDF"; get = "SumatraPDF"}
)

foreach ($graphite in $graphites){
        New-item -itemtype SymbolicLink -path "$($graphite.Path)" -target  "$pencil/$($graphite.get)" -force
}
