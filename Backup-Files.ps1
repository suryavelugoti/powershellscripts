$source = "/Users/suryavelugoti/Downloads/DevOps Files/powershellscripts"
$destination = "/Users/suryavelugoti/Downloads/Backupfiles"

# Create destination folder if it doesn't exist
if (!(Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}

while ($true) {
    try {
        Write-Output "Starting backup at $(Get-Date)..."
        Copy-Item -Path "$source/*" -Destination $destination -Recurse -Force
        Write-Output "Backup completed at $(Get-Date)."
    } catch {
        Write-Output "Error during backup: $_"
    }

    # Wait for 1 hour (3600 seconds)
    Start-Sleep -Seconds 3600
}
