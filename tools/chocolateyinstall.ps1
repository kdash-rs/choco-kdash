$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/kdash-rs/kdash/releases/download/v0.0.6/kdash-windows.tar.gz'
$url64      = 'https://github.com/kdash-rs/kdash/releases/download/v0.0.6/kdash-windows.tar.gz'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'kdash'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '6765dfc966e8c9bbbe4e6a2fa7c2f5b58b06ac1a2ba3db404aaa95b198feb292'
  checksumType  = 'sha256'
  checksum64    = '6765dfc966e8c9bbbe4e6a2fa7c2f5b58b06ac1a2ba3db404aaa95b198feb292'
  checksumType64= 'sha256'

}
Install-ChocolateyZipPackage @packageArgs
