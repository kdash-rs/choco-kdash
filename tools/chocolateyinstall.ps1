$ErrorActionPreference = 'Stop';

$PackageName = 'kdash'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/kdash-rs/kdash/releases/download/v0.1.0/kdash-windows.tar.gz'
$checksum64  = 'e76da9e0a08b8a89e31a0aa4a9c3b4ad8809578b0e294726545e7151dcb114b1'

$packageArgs = @{
  packageName   = $packageName
  softwareName  = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url64
  url64bit      = $url64

  checksum      = $checksum64
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'

}
Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $env:ChocolateyInstall\lib\$packageName\tools\ -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $env:ChocolateyInstall\lib\$packageName\tools\