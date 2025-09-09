$PortalAddress = 'myportal.gpcloudservice.com'
$MSIFileName = 'GlobalProtect64.msi'
$MSISwitches = '/quiet /norestart'

$ScriptPath = Split-Path -Path $MyInvocation.MyCommand.Path

$InstallProcess = Start-Process -FilePath "msiexec" -ArgumentList ("/i " + [char]34 + $ScriptPath + "\" + $MSIFileName + [char]34 
PORTAL=”vpn.fagprove.jarand.site”” DEFAULTBROWSER=””yes”” CONNECTMETHOD=””user-logon”” 

#Register PLAP provider
Start-Process -FilePath "$env:ProgramFiles\Palo Alto Networks\GlobalProtect\PanGPS.exe" -ArgumentList "-registerplap" -Wait
Write-Host ("Installation completed, exiting with last return code (" + $InstallProcess.ExitCode + ")")
Exit $InstallProcess.ExitCode