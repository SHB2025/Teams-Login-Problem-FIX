# Univerzalni skript za čišćenje cache-a Microsoft Teams (legacy i new)
# Universal script to clear Microsoft Teams cache (legacy and new)

Write-Host "Zatvaram sve instance Microsoft Teams... / Closing all Microsoft Teams instances..."
Stop-Process -Name Teams -Force -ErrorAction SilentlyContinue   # Stara verzija / Legacy version
Stop-Process -Name ms-teams -Force -ErrorAction SilentlyContinue # Nova verzija / New version

# Definiraj sve moguće putanje cache foldera
# Define all possible cache folder paths
$teamsPaths = @(
    "$env:APPDATA\Microsoft\Teams",                                # Legacy Teams cache
    "$env:LOCALAPPDATA\Microsoft\Teams",                           # Legacy Teams (neke instalacije / some installations)
    "$env:LOCALAPPDATA\Packages\MSTeams_8wekyb3d8bbwe\LocalCache", # New Teams cache
    "$env:LOCALAPPDATA\Packages\MSTeams_8wekyb3d8bbwe\LocalState", # New Teams state
    "$env:LOCALAPPDATA\Packages\MSTeams_8wekyb3d8bbwe\Settings"    # New Teams settings
)

foreach ($path in $teamsPaths) {
    if (Test-Path $path) {
        Write-Host "Brišem cache iz: $path / Clearing cache from: $path"
        Remove-Item "$path\*" -Recurse -Force -ErrorAction SilentlyContinue
    } else {
        Write-Host "Putanja ne postoji: $path / Path does not exist: $path"
    }
}

Write-Host "Cache očišćen. Pokrećem Teams ponovo... / Cache cleared. Restarting Teams..."

# Pokreni odgovarajuću verziju Teams-a
# Start the appropriate Teams version
if (Test-Path "$env:LOCALAPPDATA\Microsoft\Teams\Update.exe") {
    Start-Process "$env:LOCALAPPDATA\Microsoft\Teams\Update.exe" --processStart "Teams.exe" # Legacy Teams
} else {
    Start-Process "ms-teams://" # New Teams
}

Write-Host "Gotovo! Teams je ponovo pokrenut. / Done! Teams has been restarted."
