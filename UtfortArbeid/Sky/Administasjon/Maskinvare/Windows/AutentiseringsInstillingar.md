# Autentiseringsinnstillingar 

## Kvifor
Gennerelle instillingar for å betre nytte passordlaus inlogging.

## Korleis
Logg inn i intune (https://intune.microsoft.com) > Devices > Manage devices > Configuration > Create > New policy
* Platform: Windwos 10 and later
* Profile type: Settings catalog 
* Name: Settings - Authentication Settings
* Configuretion settings: Add settings
    
    * Settings picker: Authentication

        * Allow Aad Password Reset
        * Allow EAP Cert SSO (User)
        * Allow Fast Reconnect
        * Allow Secondary Authentication Device
        * Enable Fast First Sign In
        * Enable Passwordless Experience
        * Enable Web Sign In

    * Allow Aad Password Reset – Block
        * Fjernar passordendring frå låseskjerm sidan passord ikkje er i bruk. 
    * Allow EAP Cert SSO (User) – Allow
        * Gir automatisk nettverksinnlogging med sertifikat.
    * Allow Fast Reconnect – Block
        * Tvingar full reautentisering ved nettverksbytte.
    * Allow Secondary Authentication Device – Block
        * Blokkerar bruk av mobil som innloggingsenhet.
    * Enable Fast First Sign In – Disabled
        * Gir betre kontroll ved første innlogging.
    * Enable Passwordless Experience – Enabled
        * Tillèt passordlaus innlogging (Windows hello, FIDO2).
    * Enable Web Sign In – Enabled
        * Aktiverer nettbasert innlogging.
* Assignments: DEVICE - Default wildows autopilot

* Review + create 

    * Create