# Set script and logging paths
$ScriptDir = "C:\Users\Public\Script"
$LogCommand = "$ScriptDir\Shell\Log\Log.ps1 Git.ps1"

& $LogCommand "start"

# Check if Chocolatey is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    & $LogCommand "Git installing..."

    choco install git -y
}

$ $LogCommand "end"
