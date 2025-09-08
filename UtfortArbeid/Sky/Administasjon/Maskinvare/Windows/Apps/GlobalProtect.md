# Innstalasjon globalprotect / msi filer

## Kvifor
Denne appen trengst for å nytte global protect VPN

## Korleis

# Generere intunewinfra av global protect msi fil 

## Kvifor
Dette må gjerast for å kunne ha ei instalasjonfil som intune kan installere på klienter

## Korleis

### Før ein begynner
For å få tak i global protect mis fila må ein laste den ned frå palo alto. Dette kan ein gjere rett frå brannmuren då den konfigurerer si eiga innstalasjonsfil. 
Gå til Device > Global protect client

Opprett intunewin via IntuneWinAppUtil script my PC (sjå lenke under)

Ha powershell script og msi gil liggande i .\input mappa

Start programmet og kjøyr programmet:

    IntuneWinAppUtil.exe -c .\input\ -s globalprotect.ps1 -o .\output\

### Rulle ut app
Logg inn på intune admin center (https://intune.microsoft.com)
* Apps > Windows > Create > Other > Line of business app
* Last opp msi fil
* Name: GlobalProtect
* Description: GlobalProtect
* Publisher: Palo alto
* App install context: Device
* Ignore app version: No
* Command-line arguments: No Command-line arguments
* Category: Business
* Show this as a featured app in the Company Portal: No
* Asignments: Required: all windwos devices

## Resursar
https://docs.paloaltonetworks.com/globalprotect/10-1/globalprotect-admin/mobile-endpoint-management/manage-the-globalprotect-app-using-microsoft-intune/deploy-a-new-device-using-autopilot-and-microsoft-intune

https://learn.microsoft.com/en-us/intune/intune-service/apps/apps-win32-prepare