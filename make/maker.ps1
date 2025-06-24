param (
    [string]$TargetPath
)

function Ensure-Admin {
    if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
        Start-Process powershell "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" `"$TargetPath`"" -Verb RunAs
        exit
    }
}
Ensure-Admin

$graphiteRoot = "$env:USERPROFILE\.graphite"
$folderName = Split-Path -Path $TargetPath -Leaf
$destination = Join-Path $graphiteRoot $folderName

if (!(Test-Path $graphiteRoot)) {
    New-Item -Path $graphiteRoot -ItemType Directory | Out-Null
}

if (!(Test-Path $destination)) {
    Copy-Item -Path $TargetPath -Destination $destination -Recurse
}

Remove-Item -Path $TargetPath -Recurse -Force
New-Item -ItemType SymbolicLink -Path $TargetPath -Target $destination | Out-Null
