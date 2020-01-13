
[CmdletBinding()] 
param() 
 
Trace-VstsEnteringInvocation $MyInvocation 
try { 
    
    
    # Get inputs. 
    $ServiceName = Get-VstsInput -Name 'ServiceName' -Require 
    $StartorSttop = Get-VstsInput -Name 'StartorSttop' -Require 

    Get-Service "SQL Server (NS2014)" | Where {$_.status –eq 'Running'} |  Stop-Service


    # Get-Service "SQL Server (NS2014)" | Where {$_.status –eq 'Stopped'} |  Start-Service


    # Set-Service "SQL Server (NS2014)" -StartupType manual
     

} finally { 
    Trace-VstsLeavingInvocation $MyInvocation 
}


