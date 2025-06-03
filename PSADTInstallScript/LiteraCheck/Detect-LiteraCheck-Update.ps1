#Detect-LiteraCheck-Update.ps1

#Detect-LiteraDLL-MinVersion.ps1

$DllPath = "C:\Program Files\Litera\Litera Check\Litera.LD.Addin.dll"
$MinRequiredVersion = [version]"1.15.0.4"

if (Test-Path -Path $DllPath) {
    try {
        $fileVersion = (Get-Item -Path $DllPath).VersionInfo.FileVersion
        $currentVersion = [version]$fileVersion

        if ($currentVersion -ge $MinRequiredVersion) {
            Write-Output "DLL version $currentVersion is equal to or greater than $MinRequiredVersion."
            exit 0  # App is detected
        } else {
            Write-Output "DLL version $currentVersion is below required version $MinRequiredVersion."
            exit 1  # App is NOT detected
        }
    } catch {
        Write-Output "Error reading DLL version: $_"
        exit 1  # App is NOT detected due to error
    }
} else {
    Write-Output "DLL not found at path: $DllPath"
    exit 1  # App is NOT detected
}
