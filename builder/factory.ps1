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

$path = "C:/farm/wheats/pencil"
$pathm = "C:/farm/wheats/pencil/maker"

$docs = @(
    @{url = "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pencil.exe"; outfile = "$env:TEMP/pencil.exe"; file = "C:/farm/wheats/pencil/pencil.exe"}
    @{url = "https://github.com/HimadriChakra12/.Pencil/releases/download/1.0.0/pen.exe"; outfile = "$env:TEMP/pen.exe"; file = "C:/farm/wheats/pencil/pen.exe"}
    @{url = "https://github.com/HimadriChakra12/.Pencil/raw/refs/heads/master/make/maker.ps1"; outfile = "$env:TEMP/maker.ps1"; file = "C:/farm/wheats/pencil/maker/maker.ps1"}
)
if (-not (test-path $path)){
    mkdir $path | out-null
}

if (-not (test-path $pathm)){
    mkdir $path | out-null
}
foreach ($doc in $docs){
    iwr -uri $doc.url -OutFile $doc.file 
}

try{
    $currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($currentPath -notlike "*$path*"){
        [Environment]::SetEnvironmentVariable("Path", "$currentPath;$path", "User")
        Write-Host "pencil added to user PATH." -ForegroundColor cyan
    } else {
        Write-Host "pencil already in user PATH." -ForegroundColor green
    }
} catch {
    Write-Error "Error adding pencil to path: $($_.Exception.Message)"
}

if (get-command gsudo){
    write-host "Already have gsudo" -ForegroundColor green
} else {
    PowerShell -Command "Set-ExecutionPolicy RemoteSigned -scope Process; [Net.ServicePointManager]::SecurityProtocol = 'Tls12'; iwr -useb https://raw.githubusercontent.com/gerardog/gsudo/master/installgsudo.ps1 | iex"
}

