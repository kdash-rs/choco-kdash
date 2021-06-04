$ErrorActionPreference = 'Stop';

$PackageName = 'kdash'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/kdash-rs/kdash/releases/download/v0.1.1/kdash-windows.tar.gz'
$checksum64  = '4d7cb77de90f2f699402619b5d50c4d2c300cb26cae9114701dcccf2523ad982'

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