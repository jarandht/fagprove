## Kviteliste land

Named Locations > Cuntries location > gi navn og velg land

Policies > Ny policy > 

Users > Users and groups > All users

( Test policyen på ei grupper/brukar eller i repport only mode før du kativerar den for alle )

( Sett breakglass kontoar som exclude )

Conditions > Location > Location > Configure > Yes

Conditions > Location > Location > Include > Anny netowrk

Conditions > Location > Location > Exclude > Tidlegare oppretta lokasjon

Grant > Block access

Enable policy > On


Save

Name: Force Joined Device

Users: (exclude break-glass)

Resources: All

Conditions:

    Filter for devices

        - Device state: Exclude Entra joined, compliant, and hybrid joined

Grant controls:

  - Block access

Enable: Yes