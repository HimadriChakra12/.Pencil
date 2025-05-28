clear
Write-host "
+------------------------------------------------------+
|                                            ### ###   |
|                                            ``` ###   |
|                                           #### ###   |
|     #######    ###### ## #####   ########  ### ###   |
|     ##   ###  ##   ##  ###  ### ###        ### ###   |
|     ##   ###  ######   ###  ### ###        ### ###   |
|     #######   ##     # ###  ### ###        ### ###   |
|     ##         ######  ###  ###  ########  ### ####  |
| ##  ##                                               |
| ``  ``                                               |
+------------------------------------------------------+
"                         
write-host "Chopping Wood....." -ForegroundColor cyan
$pencil = "~/.graphite"
if(test-path $pencil){
    write-host "Got wood" -ForegroundColor green
} else{
    write-host "Make a .graphite[windows dotfiles] repo with git and clone it" -ForegroundColor green
}
write-host "
Looking For graphites.....
=========================="  -ForegroundColor cyan
$graphites = @(
    @{ Name = "Neovim"; Path = "C:\Users\himadri\AppData\Local\nvim"; get = "nvim"},
    @{ Name = "Github Cli"; Path = "C:\Users\himadri\AppData\Roaming\GitHub CLI"; get = "Github Cli"},
    @{ Name = "Lazygit"; Path = "C:\Users\himadri\AppData\Local\lazygit"; get = "lazygit"},
    @{ Name = "Sumatra PDF"; Path = "C:\Users\himadri\AppData\Local\SumatraPDF"; get = "SumatraPDF"}
)

foreach ($graphite in $graphites){
    if(test-path $($graphite.Path)) {
        write-host "Graphite Found of '$($graphite.Name)' at [$($graphite.Path)]" -ForegroundColor green 
    } else {
        Write-Host "No Graphite of $($graphite.Name): $_" -ForegroundColor Red
    }
}
 

