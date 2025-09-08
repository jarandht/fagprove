# Windows Autopatch
&nbsp;
## Kva og kvifor
Windows Autopatch sørgjer for automatisk oppdatering av Windows, drivarar og Microsoft-produkt. Dette held einingane trygge, oppdaterte og reduserer behovet for manuell handtering av oppdateringar.

## Korleis

* Logg inn i intune: https://intune.microsoft.com

#### Opprette autopatch
* Devices > Windows > Windows update > Update rings > Create Profile
* Name: Autopatch
* Microsoft product updates: Allow
* Windows drivers: Allow
* Quality update deferral period (days): 0
* Feature update deferral period (days): 0
* Upgrade Windows 10 devices to Latest Windows 11 release: Yes
* Set feature update uninstall period (2 - 60 days): 10
* Enable pre-release builds: Not Configured
* Automatic update behavior: Auto install and reboot without end-user control
* Option to pause Windows updates: Enable
* Option to check for Windows updates. enable
    * Change notification update level: Turn off all notifications, excluding restart warnings
* Use deadline settings: Not configured
* Assignments
    * Included groups: DEVICES - Autopilot
    
#### Konfigurere autopatch
* Logg inn i intune: https://intune.microsoft.com
* Devices > Windows > Windows update > Update rings > create profile
* Name: Default Windows update
* Update ring settings: 
    * Update settings:
        * Microsoft product updates: allow
        * Windows drivers: allow
        * Quality update Deferal period: 1
        * Feature update Deferal period: 1
        * Deferal period: 0
        * Upgrade windows 10 devices to latest windows 11 release: Yes
        * Set  feature update uninstall period: 10
        * Enable pre release build: not configured
    * User experience settings:
        * Automaticc update behaviour: Ato install abd reboot without end user control
        * Option to pause windows pdates: Enable
        * Option to check for windows pdates: Enable
            *  Default windows update notification
        * Use deadline settings: Allow
            * Alle = 7
            * Autoreboot before deadline
* Assignement: DEVICE - Default wildows autopilot

#### Driver update
* Name: Default driver update
* Settings
    * Approval method: Automatically approve all recommended driver updates
    * Make updates available after (days): 1
* Assignments: DEVICE - Default wildows autopilot

## Resusrsar
https://learn.microsoft.com/en-us/windows/deployment/windows-autopatch/overview/windows-autopatch-overview