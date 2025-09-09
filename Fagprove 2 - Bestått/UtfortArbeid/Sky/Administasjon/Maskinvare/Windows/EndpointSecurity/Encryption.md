# Disk Encryption
&nbsp;
## Kvifor?
Diskkryptering med BitLocker vernar data ved å kryptere harddisken, slik at informasjonen ikkje kan lesast dersom eininga kjem på avvegar. Ved å konfigurere dette via Intune sikrar ein at alle einingar automatisk får kryptering. Dette styrkjer personvern og etterleving av sikkerheitskrav i organisasjonen.

## Korleis
* Logg inn i intune: https://intune.microsoft.com
* Endpoint Security > Manage > Disk Encryption > Create policy
* Platform: winodws
* profile: bitlocker
* Name: Bitlocker
* Bitlocker
    * Require Device Encryption: Enabled
    * Allow Warning For Other Disk Encryption: Enabled
    * Configure Recovery Password Rotation: Refresh on for Azure AD-Joined devices
* blitlocker drive necryption
    * Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later): Enabled
        * Select the encryption method for fixed data drives: XTS-AES 128-bit
        * Select the encryption method for operating system drives: XTS-AES 128-bit
        * Select the encryption method for removable data drives: XTS-AES 128-bit
    * Provide the unique identifiers for your organization: Not configured
* Operating system drives
    * Enforce drive encryption type on operating system drives: Enabled
        * Select the encryption type: (Device): Full encryption
    * Require additional authentication at startup: Not configured
    * Configure minimum PIN length for startup: Not configured
    * Allow enhanced PINs for startup: Not configured
    * Disallow standard users from changing the PIN or password: Not configured
    * Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN.: Not configured
    * Enable use of BitLocker authentication requiring preboot keyboard input on slates: Not configured
    * Choose how BitLocker-protected operating system drives can be recovered: Not configured
    * Configure pre-boot recovery message and URL: Not configured
* Fixed data drives
    * Enforce drive encryption type on fixed data drives: Not configured
    * Choose how BitLocker-protected fixed drives can be recovered: Not configured
    * Deny write access to fixed drives not protected by BitLocker: Not configured
* Removable drives
    * Control use of BitLocker on removable drives: Not configured
    * Deny write access to removable drives not protected by BitLocker: Not configured
* Assignment
    * Included Groups: DEVICE - Default wildows autopilot

## Resusrsar
https://learn.microsoft.com/en-us/intune/intune-service/protect/encrypt-devices