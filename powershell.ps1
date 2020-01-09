


Get-Service "SQL Server (NS2014)" | Where {$_.status –eq 'Running'} |  Stop-Service


Get-Service "SQL Server (NS2014)" | Where {$_.status –eq 'Stopped'} |  Start-Service