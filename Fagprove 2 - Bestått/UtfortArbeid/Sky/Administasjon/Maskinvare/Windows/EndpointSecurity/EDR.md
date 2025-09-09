# Konfigurasjon av Endpoint detection and response
&nbsp;
## Kva og kvifor
Endpoint Detection and Response (EDR) overvakar og analyserer aktivitet på klienteiningar for å oppdage mistenkeleg åtferd og truslar i sanntid. Ved å konfigurere EDR i Intune får ein automatisk vern, varsling og moglegheit for respons dersom det blir oppdaga sikkerheitshendingar. Dette styrkjer det totale trusselvernet og bidreg til raskare handtering av sikkerheitsavvik.

## Korleis
* Logg inn i intune: https://intune.microsoft.com
* Endpoint Security > Manage > Endpoint Detection and Response > Create policy
Platform: windows 
* Profile_ Endpoint detection and resposnse
* Name: Endpoint detection and response
* Microsoft Defender for Endpoint client configuration package type: Onboard
* Simple sharing: All
* [Deprecated] Telemetry Reporting Frequency: Expedite
* Assignment
    * Included Groups: DEVICE - Default wildows autopilot

## Resusrsar
https://learn.microsoft.com/en-us/intune/intune-service/protect/endpoint-security-edr-policy