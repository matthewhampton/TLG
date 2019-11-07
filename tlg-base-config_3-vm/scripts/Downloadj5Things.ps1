(New-Object System.Net.WebClient).DownloadFile(
    "http://j5builds.j5int.com/d/xxxxxxxxxx/j5-framework-2019-28.0.43343.0.exe",
    "$PSScriptRoot\j5-framework-2019-28.0.exe")

(New-Object System.Net.WebClient).DownloadFile(
    "http://j5builds.j5int.com/d/xxxxxxxxx/j5-ops-bundle-2019-28.0.4750.0.msi",
    "$PSScriptRoot\j5-ops-bundle-2019-28.0.msi")


(New-Object System.Net.WebClient).DownloadFile(
    "https://aka.ms/vs/15/release/vc_redist.x64.exe",
    "$PSScriptRoot\vc_redist.x64.exe")

(New-Object System.Net.WebClient).DownloadFile(
    "https://www.sumatrapdfreader.org/dl/SumatraPDF-3.1.2-64.zip",
    "$PSScriptRoot\SumatraPDF-3.1.2-64.zip")
