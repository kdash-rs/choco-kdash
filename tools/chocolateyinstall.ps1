$ErrorActionPreference = 'Stop';

$PackageName = 'kdash'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/kdash-rs/kdash/releases/download/v0.3.7/kdash-windows.tar.gz'
$checksum64  = '2e8fb80b1447ebebefb502400d47ef5a30baad1a0e3de08b9c92cb1bb3eef7e4'

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