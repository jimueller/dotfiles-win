$iconsDir = "$PSScriptRoot/MicrosoftTerminal/icons/*"

Write-Host "Copying Icon Files from $iconsDir`n"
Get-ChildItem -Path $iconsDir -Recurse | ForEach-Object { Write-Host "$_" }
# Not sure if the random string in the package name is the same across versions/installs,
# so let's use a filter and hope for the best
$dest = (Get-ChildItem -Path $env:LOCALAPPDATA/Packages -Filter '.\Microsoft.WindowsTerminal*').FullName + "/RoamingState/"
Write-Host "`nDest: $dest"

if (Test-Path $dest) {
	Copy-Item $iconsDir -Destination $dest -Recurse -ErrorAction Continue
	Write-Host "`nCopied Icons:"
	Get-ChildItem $dest
}
else {
	Write-Error "`nDestination directory not found $dest"
}
