[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Set-Location -Path $PSScriptRoot
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
Install-Script -Name Get-WindowsAutopilotInfo
$SerialNumber = (Get-WmiObject -class win32_bios).SerialNumber
$PCNummer = Read-Host -Prompt "PC Nummer"
Get-WindowsAutopilotInfo -OutputFile AutopilotHWID-sn$SerialNumber-pc$PCNummer.csv