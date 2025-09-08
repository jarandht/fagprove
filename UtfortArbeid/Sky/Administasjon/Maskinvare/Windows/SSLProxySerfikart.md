# Windows Hello For Business
&nbsp;
## Kva og kvifor
Windows Hello for Business gir tryggare og meir brukervennleg pålogging ved å erstatte passord med PIN, biometri eller sikkerheitsnøkkel. Det styrkjer sikkerheita og gir betre brukaroppleving.

## Korleis
Logg inn i intune (https://intune.microsoft.com) > Devices > Manage devices > Configuration > Create > New policy
* Platform: Windwos 10 and later
* Profile type: Template

    * Trusted certificate
* Bastic
    * Name: SSL Proxy cert
* Configuration settings
    * Certificate file: Last opp serfikat som palo alto bruker som root cert
    * Destination store: Computer certificate store - Root

* Assignments 

    * Included groups: DEVICE - Default wildows autopilot

* Review + create: Create

## Resusrsar
https://learn.microsoft.com/en-us/intune/intune-service/protect/certificates-trusted-root