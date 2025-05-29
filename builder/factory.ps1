clear
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator")) {
    #if not it will run the command on admin
    Write-Warning "Running this script as Administrator!"
    Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://tinyurl.com/hpencil" | iex ; exit "' -Verb RunAs
    exit
}
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
iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/0.2.0/pencil.exe" -OutFile "$env:TEMP/pencil.exe" ; copy-item "$env:TEMP/pencil.exe" "C:/Windows/System32/pencil.exe"
iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/0.2.0/pen.exe" -OutFile "$env:TEMP/pen.exe" ; copy-item "$env:TEMP/pen.exe" "C:/Windows/System32/pen.exe"
$pencil = "~/.graphite"
if(test-path $pencil){
    write-host "Got wood" -ForegroundColor green
} else{
    write-host "Make a .graphite[windows dotfiles] repo with git and clone it" -ForegroundColor green
}
write-host "
Looking For Charcoals.....
=========================="  -ForegroundColor cyan
$graphites = @(
    @{ Name = "Neovim"; Path = "C:\Users\himadri\AppData\Local\nvim"; get = "nvim"},
    @{ Name = "Github Cli"; Path = "C:\Users\himadri\AppData\Roaming\GitHub CLI"; get = "Github Cli"},
    @{ Name = "Lazygit"; Path = "C:\Users\himadri\AppData\Local\lazygit"; get = "lazygit"},
    @{ Name = "Sumatra PDF"; Path = "C:\Users\himadri\AppData\Local\SumatraPDF"; get = "SumatraPDF"}
)

foreach ($graphite in $graphites){
    if(test-path $($graphite.Path)) {
        write-host "Charcoal Found of '$($graphite.Name)' at [$($graphite.Path)]" -ForegroundColor green 
    } else {
        Write-Host "No Charcoal of $($graphite.Name): $_" -ForegroundColor Red
    }
}
 

