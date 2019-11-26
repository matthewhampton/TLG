certutil -pulse

& 'C:\Program Files (x86)\j5\framework\bin\KeyManager.exe' create-csr -c ZA -s WC -l "Cape Town" -o "j5" --fqdn app1.example.com "$PSScriptRoot\app1.csr" "$PSScriptRoot\app1.key"

certreq -submit -attrib "CertificateTemplate:WebServer" "$PSScriptRoot\app1.csr" "$PSScriptRoot\app1.crt"

& 'C:\Program Files (x86)\j5\framework\bin\KeyManager.exe' import-https-certificate "$PSScriptRoot\app1.key" "$PSScriptRoot\app1.crt"

netsh advfirewall firewall add rule name = SQLPort dir = in protocol = tcp action = allow localport = 80,443 remoteip = localsubnet profile = DOMAIN,PRIVATE,PUBLIC
