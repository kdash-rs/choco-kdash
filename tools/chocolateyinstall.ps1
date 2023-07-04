$ErrorActionPreference = 'Stop';

$PackageName = 'kdash'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/kdash-rs/kdash/releases/download/v0.4.0/kdash-windows.tar.gz'
$checksum64  = '7c9b4a89daaefd7a104bfeb2f1e9f72c9042a08682c4a81dc8756f631be11461'

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