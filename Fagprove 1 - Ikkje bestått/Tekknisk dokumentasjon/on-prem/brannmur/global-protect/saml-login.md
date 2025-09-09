Entra

* https://learn.microsoft.com/en-us/entra/identity/saas-apps/paloaltoadmin-tutorial
* Bruker ferdilaga globalprotekt mal i entra
* Opprette serfikat i palo under CA cert og gjere om til pfx for å laste opp i enterprice applicaton til entra
* openssl pkcs12 -inkey key.pem -in crt.crt -export -out pfx.pfx
* sett rett serfikat til active og velg SHA-1

Device > Server Profiles > SAML Identity Provider > Add
* Profile name: EntraID
* Identity Provider ID: https://sts.windows.net/XXXX
* Identity Provider Certificate: Tidelgare oppretta cert
* SSO URL: https://login.microsoftonline.com
* SLO URl: https://login.microsoftonline.com
* SSO Requests: Redirect
* Validate Identity Provider Certificate: no
* Sign SAML Message to IDP: no

Device > Authenticatipon Profile
* Name: entraID
* Type: SAML
* IDP Server Profile entraID
* Certificate for signing request: None
* Username attribute: username
* Advanced > Allow list > All

Network > GlobalProtect > Portals > Add 

 General
* Interface 10.220.0.1
* Appearance: factory default

Authentication > Add > EntraID

Agent > Default > App
* Allow user to disconnect GlobalProtect App (Always-on mode): Dissallow
