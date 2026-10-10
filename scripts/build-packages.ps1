# Build starter-only archives for review or an authorized release.
# Run from PowerShell 7. This command never installs or publishes a package.
[CmdletBinding()]
param(
    [ValidatePattern('^[0-9A-Za-z][0-9A-Za-z.-]*$')]
    [string]$Version = 'unreleased',
    [string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$outputRoot = if ($OutputDirectory) {
    [System.IO.Path]::GetFullPath($OutputDirectory)
} else {
    Join-Path $repositoryRoot 'dist'
}
$licensePath = Join-Path $repositoryRoot 'LICENSE'
if (-not (Test-Path -LiteralPath $licensePath -PathType Leaf)) {
    throw 'The repository MIT LICENSE is missing.'
}

$packages = foreach ($name in @('starter-light', 'starter-complete')) {
    $sourcePath = Join-Path $repositoryRoot $name
    foreach ($requiredPath in @('AGENTS.md', '.context/README.md', '.context/STATUS.md')) {
        if (-not (Test-Path -LiteralPath (Join-Path $sourcePath $requiredPath) -PathType Leaf)) {
            throw "Missing package file: $name/$requiredPath"
        }
    }
    $archivePath = Join-Path $outputRoot "dot-context-$name-$Version.zip"
    if (Test-Path -LiteralPath $archivePath) {
        throw "Archive already exists; choose a fresh output directory: $archivePath"
    }
    [pscustomobject]@{ Source = $sourcePath; Archive = $archivePath }
}

New-Item -ItemType Directory -Path $outputRoot -Force | Out-Null
foreach ($package in $packages) {
    [System.IO.Compression.ZipFile]::CreateFromDirectory(
        $package.Source, $package.Archive,
        [System.IO.Compression.CompressionLevel]::Optimal, $false
    )
    $archive = [System.IO.Compression.ZipFile]::Open(
        $package.Archive, [System.IO.Compression.ZipArchiveMode]::Update
    )
    try {
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $archive, $licensePath, 'LICENSE',
            [System.IO.Compression.CompressionLevel]::Optimal
        ) | Out-Null
    } finally {
        $archive.Dispose()
    }
    Write-Output $package.Archive
}
