if(-not (test-path "hklm:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5")) {
    cmd /c DISM /Online /NoRestart /Enable-Feature /FeatureName:NetFx3ServerFeatures
    cmd /c DISM /Online /NoRestart /Enable-Feature /FeatureName:NetFx3
}
else {
     Write-Host "Microsoft .Net 3.5 Framework is already installed on your machine."
}