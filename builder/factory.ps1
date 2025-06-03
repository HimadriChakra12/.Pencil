clear
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator")) {
    #if not it will run the command on admin
    Write-Warning "Running this script as Administrator!"
    Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "iwr -useb "https://tinyurl.com/hpencil" | iex "' -Verb RunAs
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
iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pencil.exe" -OutFile "$env:TEMP/pencil.exe" ; copy-item "$env:TEMP/pencil.exe" "C:/Windows/System32/pencil.exe"
iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pen.exe" -OutFile "$env:TEMP/pen.exe" ; copy-item "$env:TEMP/pen.exe" "C:/Windows/System32/pen.exe"
$pencil = "~/.graphite"
if(test-path $pencil){
    write-host "Got wood" -ForegroundColor green
} else{
    write-host "Make a .graphite[windows dotfiles] repo with git and clone it" -ForegroundColor green
}
