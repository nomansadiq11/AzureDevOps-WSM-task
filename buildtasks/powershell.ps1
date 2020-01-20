
[CmdletBinding()] 
param() 
 
Trace-VstsEnteringInvocation $MyInvocation 
try { 
    
    
    # Get inputs. 
    $ServiceName = Get-VstsInput -Name 'ServiceName' -Require 
    $StartorSttop = Get-VstsInput -Name 'ServiceStatus' -Require 

    Get-Service $ServiceName | Where {$_.status –eq 'Running'} |  Stop-Service


    # Get-Service "SQL Server (NS2014)" | Where {$_.status –eq 'Stopped'} |  Start-Service


    # Set-Service "SQL Server (NS2014)" -StartupType manual
     

} finally { 
    
    
    Trace-VstsLeavingInvocation $MyInvocation 

}


