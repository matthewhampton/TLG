Get-WindowsFeature Net-Framework-45-Core
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y WindowsAzurePowershell
choco install -y sysinternals
choco install -y git
choco install -y 7zip.install
choco install -y notepadplusplus.install
