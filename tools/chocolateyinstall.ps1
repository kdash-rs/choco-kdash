$ErrorActionPreference = 'Stop';

$PackageName = 'kdash'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/kdash-rs/kdash/releases/download/v0.6.2/kdash-windows.tar.gz'
$checksum64  = '02e57958b6873fb21601eafc15907b7d53bc5d4665fc71c3244ca810d8bc96e0'

$packageArgs = @{
  packageName   = $packageName
  softwareName  = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url64
  checksum      = $checksum64
  checksumType  = 'sha256'

}
Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $env:ChocolateyInstall\lib\$packageName\tools\ -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $env:ChocolateyInstall\lib\$packageName\tools\