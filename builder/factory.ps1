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

$path = "C:/mwshrooms/hyphws/pencil"
if (-not (test-path $path)){
    mkdir $path | out-null
}

iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pencil.exe" -OutFile "$env:TEMP/pencil.exe" ; copy-item "$env:TEMP/pencil.exe" "C:/mwshrooms/hyphws/pencil/pencil.exe"
iwr -uri "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pen.exe" -OutFile "$env:TEMP/pen.exe" ; copy-item "$env:TEMP/pen.exe" "C:/mwshrooms/hyphws/pencil/pen.exe"

if (get-command gsudo){
    write-host "Already have gsudo" -ForegroundColor green
} else {
    PowerShell -Command "Set-ExecutionPolicy RemoteSigned -scope Process; [Net.ServicePointManager]::SecurityProtocol = 'Tls12'; iwr -useb https://raw.githubusercontent.com/gerardog/gsudo/master/installgsudo.ps1 | iex"
}

try{
    $currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($currentPath -notlike "*$path*"){
        [Environment]::SetEnvironmentVariable("Path", "$currentPath;$path", "User")
        Write-Host ".pencil added to user PATH." -ForegroundColor cyan
    } else {
        Write-Host ".pencil already in user PATH." -ForegroundColor green
     }
} catch {
    Write-Error "Error adding mingw to path: $($_.Exception.Message)"
}
