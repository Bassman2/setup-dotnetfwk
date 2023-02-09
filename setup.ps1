<#
    .SYNOPSIS
    Creates a sign key file from secret
    .DESCRIPTION
    Creates a sign key file from secret
    .PARAMETER file
    Name of the key file to generate
    .PARAMETER key
    base64 encoded key file
    .NOTES
    Written by Ralf Beckers
#>

param(
    [parameter(Mandatory = $true)]
    [string]$version
	)
	
$setupDotNet40 = Join-Path -Path $PSScriptRoot -ChildPath "setup\dotNetFx40_Full_setup.exe"	
					
Write-Host "Install .NET Framework 4.0"

$setupDotNet40 /q

Write-Host ".NET Framework 4.0 installed" -ForegroundColor Green	
