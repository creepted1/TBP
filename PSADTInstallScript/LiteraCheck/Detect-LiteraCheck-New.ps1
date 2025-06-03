#Detect-LiteraCheck-New.ps1

$folderPath = "C:\Program Files\Litera\Litera Check"

if (Test-Path -Path $folderPath) {
    Write-Output "Litera Check folder detected."
    exit 0  # Detection successful
} else {
    Write-Output "Litera Check folder not found."
    exit 1  # Detection failed
}
