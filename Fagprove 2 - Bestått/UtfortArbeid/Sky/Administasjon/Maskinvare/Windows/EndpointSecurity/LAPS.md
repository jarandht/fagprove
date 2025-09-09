# LAPS (Local Administrator Password Solution)
&nbsp;
## Kva og kvifor
LAPS (Local Administrator Password Solution) sørgjer for at passordet til den lokale administratorbrukaren på Windows-einingar vert unikt, automatisk rotert og sikkert lagra i Entra ID. Ved bruk av LAPS er det berre denne lokale LAPS-brukaren som har administratorrettar på maskinen ikkje brukarane frå Entra ID. Dette aukar sikkerheita ved å avgrense lokal admin-tilgang og redusere risikoen for misbruk.

## Korleis
* Logg inn i intune: https://intune.microsoft.com
* Endpoint Security > Manage > Account protection > Create policy
* Platform: Windows
* Profile: Local admin password solution (Windows LAPS)
* Name: Antivirus
* Backup Directory: backup the password to Azure AD only
    * Password Age Days
        * Configured: yes
        * 10
* Administrator account name: not configured
* Password Complexity: Large letters + small letters + numbers + special characters (improved readability)
* Password length:
    * Configured: Yes
    * 14
* Post Authentication Actions: Reset the password, logoff the managed account, and terminate any remaining processes: upon expiration of the grace period, the managed account password is reset, any interactive logon sessions using the managed account are logged off, and any remaining processes are terminated.
* Post authentication reset dalay: 24
* Automatic Account Management Enabled: The target account will not be automatically managed (Default)
* Assignment
    * Included Groups: DEVICE - Default wildows autopilot

## Resusrsar
https://learn.microsoft.com/en-us/intune/intune-service/protect/windows-laps-policy