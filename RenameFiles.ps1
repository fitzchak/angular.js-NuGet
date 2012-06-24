$version = Read-Host "Please enter the AngularJS version"

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

Get-ChildItem "$dir\content\Scripts\*-$version*.js" | ForEach-Object {
	Rename-Item $_ -NewName $_.Name.Replace("-$version", "")
}