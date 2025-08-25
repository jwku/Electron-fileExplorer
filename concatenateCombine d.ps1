# Files to exclude
$exclude = @(
    "C:\g\0\Electron-fileExplorer\package-lock.json",
    "C:\g\0\Electron-fileExplorer\combined.txt"
)

# Combine all 1st-level files except excluded ones
Get-ChildItem -File -Path "C:\g\0\Electron-fileExplorer" |
    Where-Object { $exclude -notcontains $_.FullName } |
    ForEach-Object { Get-Content $_.FullName } |
    Set-Content "C:\g\0\Electron-fileExplorer\combined.txt"

# Open combined.txt in VSCode
code "C:\g\0\Electron-fileExplorer\combined.txt"
