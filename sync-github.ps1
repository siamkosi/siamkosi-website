$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
$gitArgs = @('-c', "safe.directory=$($PSScriptRoot.Replace('\','/'))")
$status = & git @gitArgs status --porcelain
if ($LASTEXITCODE -ne 0 -or $status) { throw 'Commit and review changes before synchronizing.' }
& git @gitArgs push github HEAD:main
if ($LASTEXITCODE -ne 0) { throw 'GitHub push failed.' }
$localHead = & git @gitArgs rev-parse HEAD
$remoteHead = & git @gitArgs ls-remote github refs/heads/main
if ($LASTEXITCODE -ne 0 -or ($remoteHead -split '\s+')[0] -ne $localHead) { throw 'GitHub verification failed.' }
Write-Output "GitHub synchronized: $localHead"
