# Innrullere enhet
&nbsp;
## kvifor?
Innrolering i Windows Autopilot sikrar at datamaskinene kan administrerast sentralt gjennom Intune. Dette gjer det mogleg å automatisere installasjon.

## Korleis
Underoppsettings prosessen til windows trykk "shift + f10"

Kjøyr:

    WindowsPowershell/v1.0/powershell_ise.exe

Opne på skripted som er lagt inn på ein minnenenn og kjør øverste linja sor seg sjølv, deretter resten. Trykk på stop knappen og so kjøyr heile scriptet.

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    New-Item -Type Directory -Path "C:\HWID"
    Set-Location -Path "C:\HWID"
    $env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned
    Install-Script -Name Get-WindowsAutopilotInfo
    Get-WindowsAutopilotInfo -OutputFile AutopilotHWID.csv

Importer fila i autopilot:

Logg inn i intune (https://intune.microsoft.com) > Devices > Windows > Enrollemnt > Devices > Import

**Under nye bestillingar blir det gjort avtale med leverandør at dette blir gjort av dei**

## Resusrsar
https://learn.microsoft.com/en-us/autopilot/add-devices