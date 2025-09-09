# Opprette dynamik gruppe for einingar

## Kvifor? 
For at nye einingar automatisk skal få ein Deployment Profile, må dei vere medlemmar i ei gruppe som profilen er knytt til. Ved å bruke dynamiske Entra ID-grupper, kan ein automatisk legge til nye einingar basert på eigenskapar som identifiserer Autopilot-enhetar utan manuell handtering. Dette gir ein enklare og meir effektiv rulleprosess.

## Korlies
* Logg inn i intune: https://entra.microsoft.com
* Groups > New group 
* Name: DEVICE - Default wildows autopilot
* Group type: Security
* Membership type: Dynamic device
* Members
    * Dynamic membership rules
        * Rule syntax > Edit
            * (device.devicePhysicalIDs -any _ -contains "[ZTDId]")

## Resursar

https://learn.microsoft.com/en-us/autopilot/enrollment-autopilot