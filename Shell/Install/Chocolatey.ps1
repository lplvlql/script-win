# Set script and logging paths
$ScriptDir = "C:\Users\Public\Script"
$LogCommand = "$ScriptDir\Shell\Log\Log.ps1 Chocolatey.ps1"

& $LogCommand "start"

# Check if Chocolatey is installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Log "Chocolatey installing..."

    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) | ForEach-Object { Log $_ }
}

$ $LogCommand "end"
