# Windows Hello For Business
&nbsp;
## Kva og kvifor
Windows Hello for Business gir tryggare og meir brukervennleg pålogging ved å erstatte passord med PIN, biometri eller sikkerheitsnøkkel. Det styrkjer sikkerheita og gir betre brukaroppleving.

## Korleis
* Logg inn i intune: https://intune.microsoft.com
* Devices > Windows > Enrollment > Enrollment Options > Windows Hello for business
* Configure Windows Hello for Business: Enabled
* Use a Trusted Platform Module (TPM): Required
* Minimum PIN length: 8
* Maximum PIN length: 127
* Lowercase letters in PIN: Allowed
* Uppercase letters in PIN: Allowed
* Special characters in PIN: Allowed
* PIN expiration (days): Never
* Remember PIN history: 10
* Allow biometric authentication: Yes
* Use enhanced anti-spoofing, when available: Yes
* Allow phone sign-in: No
* Enable enhanced sign in security: Enhanced sign-in security will be enabled on systems with capable hardware.
* Use security keys for sign-in: Enabled

## Resusrsar
https://learn.microsoft.com/en-us/windows/security/identity-protection/hello-for-business/