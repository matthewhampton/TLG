#TODO: the computer needs permissions
$enrollResult = Get-Certificate -SubjectName "CN=app1.example.com" -DnsName app1.example.com -Template "ExportableWebServer" -CertStoreLocation Cert:\LocalMachine\My

$mypwd = ConvertTo-SecureString -String "1234" -Force -AsPlainText
Export-PfxCertificate -Cert $enrollResult.Certificate -FilePath "$PSScriptRoot\app1.pfx" -Password $mypwd 

& 'C:\Program Files (x86)\j5\framework\bin\KeyManager.exe' import-https-certificate .\app1.pfx --password 1234