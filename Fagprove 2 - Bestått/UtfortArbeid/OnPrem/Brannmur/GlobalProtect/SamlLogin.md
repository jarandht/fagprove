# Autentisering i globalprotect klient med Entra ID via SAML

## KVifor?
Å bruke smal innlogging i Palo Alto GlobalProtect gir ein enklare og meir brukarvennleg påloggingsoppleving. Det reduserer risiko for feil og forvirring ved å vise færre val og felt. I tillegg styrkar det tryggleiken ved å føre brukarane direkte til riktig autentiseringsmetode.

## Korleis

### Før ein begynner
* Opprette serfikat i palo under CA cert og gjere om til pfx for å laste opp i enterprice applicaton til entra
* openssl pkcs12 -inkey key.pem -in crt.crt -export -out pfx.pfx

Er og oppretta vpn.fagprove.jarand.site DNS A record mot 10.220.0.1 

### Entra ID
Logg inn i entra (https://entra.microsoft.com) Enterprice applications > New application > Søk: Palo Alto Networks - GlobalProtect > Add

Application > Single sign on > SAML 

**Bastic SAML configuration**

* Sign-on URL:

        https://vpn.fagprove.jarand.site
* Identifier (Entity ID)

        https://vpn.fagprove.jarand.site:443/SAML20/SP
* Reply URL (Assertion Consumer Service URL)

        https://vpn.fagprove.jarand.site:443/SAML20/SP/ACS

**SAML Certificates**
* Federation Metadata XML: Download

### I Palo alto 
Device > Server profiles > SAML Identity provider > Import
* Name: EntraID
* Identity provided metadata: XML fil frå Entra
* Validate Identity Provider certificate: False
* Validate Metatada signature: False

Device > Authenticatipon Profile
* Name: EntraID
* Type: SAML
* IDP Server Profile EntraID
* Certificate for signing request: None
* Username attribute: username
* Advanced > Allow list > All

## Resursar
https://knowledgebase.paloaltonetworks.com/KCSArticleDetail?id=kA10g0000008U48CAE