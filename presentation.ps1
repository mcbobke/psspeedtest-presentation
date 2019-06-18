Start-Process https://github.com/mcbobke/PSSpeedTest
Start-Process https://iperf.fr/iperf-servers.php

Find-Module -Name "PSSpeedTest"

Get-Command -Module "PSSpeedTest"

Get-SpeedTestConfig
Set-SpeedTestConfig -InternetServer "iperf.he.net" -InternetPort "5201" -LocalServer "localhost" -LocalPort "5201"

Invoke-SpeedTest -Internet -Verbose
Invoke-SpeedTest -Server "iperf.he.net" -Port "5201" -Verbose

Install-SpeedTestServer -Port 5201 -Verbose

Invoke-SpeedTest -Local -Verbose
Invoke-SpeedTest -Server "localhost" -Port "5201"

Remove-SpeedTestServer -Verbose