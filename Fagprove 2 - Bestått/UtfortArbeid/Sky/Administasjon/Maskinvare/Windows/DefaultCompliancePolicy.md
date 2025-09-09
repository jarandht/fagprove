# Compliancy policy

## Kvifor?
Compliance policies sikrer at alle enheter som kobler seg til bedriftens nettverk eller systemer oppfyller bestemte sikkerhetskrav. Dette beskytter bedriften mot risiko som datainnbrudd, virus, og uautorisert tilgang. Ved å ha klare regler for enhetenes tilstand (f.eks. passord, kryptering, oppdateringer), kan man:
* Sikre at enhetene er trygge å bruke.
* Forhindre at usikre eller kompromitterte enheter får tilgang til sensitive data.
* Oppfylle lover og regler for personvern og datasikkerhet.
* Redusere risikoen for datatap eller angrep.

## Korleis
* Logg inn i intune: https://intune.microsoft.com
* Devices > Windows > Compliance > New policy
* Platform: Windows 10 and later
* Profile type: Windows 10/11 compliance policy
* Name: Default compliance policy
* Compliance settings
  * Device health:
    * Bitlocker: Required
    * Secure Boot: Required
    * Code Integrity: Required
  * System security:
    * Require encryption of data storage on device: Required
    * Firewall: Required
    * Trusted Platform Module (TPM): Required
    * Antivirus: Required
    * Antispyware: Required
    * Microsoft Defender Antimalware: Required
    * Microsoft Defender Antimalware security intelligence up-to-date: Required
    * Real-time: protection Required
    * Microsoft defender for endpoint
      * Require the device to be at or under the machine risk score: Medium
  
* Mark device noncompliant: 5 days

* Assignsment: DEVICE - Default wildows autopilot

## Resursar
https://learn.microsoft.com/en-us/intune/intune-service/protect/device-compliance-get-started