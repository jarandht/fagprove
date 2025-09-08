# Tilgongstyring internt på IT

## Kvifor?
Alle på IT treng visse tilongar men alle på it treng ikkje ha alle tilgongar (Global admin). Derfor blir det oppretta grupper med tilgongar tilpassa dei arbeidsoppgåvene som skal gjerast

## Korleis
Logg deg inn i microsoft entra (https://entra.microsoft.com) > groups > new group
* Name: XXX
* Group can be assigned roles: Yes
* Create
* groups > "gruppa" > Asign roles


Hjå IT får kvar ansatt 2 kontoar 1 for dagleg bruk epost, teams ogv og ein til priviligert arbeid.

Det blir oppretta følgene grupper og IT personel blir gitt dei tilogngane som passar

| **Gruppe**| **Tilgong**| **Kvifor**|
|-----|---|---|
| **ACCESS - Helpdesk 1. linje** | Authentication Administrator | Hjelpe brukarar med MFA, FIDO, TAP og påloggingsproblem|
|| Reports Reader| Kan lese logger for feilsøking utan tilgang til å endre noko|
|| Teams Reader | Innsyn i Teams-struktur for å støtte brukarar|
| | Security Reader| Innsyn i sikkerheitsvarsler og policyar, utan endringsrett|
| **ACCESS - Brukaradministrasjon** | User Administrator| Opprette og vedlikehalde brukarkontoar, tildele lisenser|
| | Groups Administrator | Lage og administrere grupper for tilgangsstyring  |
| | License Administrator| Administrere lisensar uavhengig av brukarkonto|
| **ACCESS - Team og samhandling**  | Teams Administrator  | Full administrasjon av Teams, policies og møteromsinnstillingar |
| | Office Apps Administrator| Administrere Office-installasjonar og -innstillingar|
| | SharePoint Administrator | Full tilgang til SharePoint, dokumentstruktur og deling|
| **ACCESS - Sikkerheit**| Security Administrator | Endre sikkerheitspolicyar, overvake og svare på truslar|
|| Compliance Administrator  | Tilgang til data governance, DLP, eDiscovery og revisjon  |
|  | Privileged Role Administrator  | Administrere kven som får tildelt høge rettar som Global Admin|
| **ACCESS - Infrastruktur** | Exchange Administrator | Administrere e-post, postboksar og transportreglar |
| | Intune Administrator| Administrere enheiter, policyar og applikasjonar via Endpoint Manager |
| | Universal Print Administrator| Administrere skriverar og utskriftskøar via Universal Print|
| **ACCESS - Global reader**| Global Reader| Full lesetilgang til tenester, utan endringsrett – nyttig for IT-leiarar  |
| **ACCESS - Global admin**| Global Administrator| Full tilgang – bør berre brukast av få og gjerne med PIM  |

* **I oppsettet er det berre oppretta "ACCESS - Helpdesk 1. linje" og "ACCESS - Global admin" då dei ande er berre unødvendig bruk av tid å legge inn.**
* Det kan og soklart gjerast endringar for å tillpasse kva som trengst eller ikkje trengst i ein reel situasjon

## PIM
Eg har ikkje P2-lisensar, og dermed kan vi ikkje nytte Privileged Identity Management (PIM).

Dersom PIM hadde vore tilgjengeleg, ville vi brukt det til å innføre *Just-In-Time access* (JIT). Det betyr at administratorar berre får heva rettane sine når dei faktisk treng det, og ikkje går rundt med permanente høge tilgongar.  

I tillegg ville vi konfigurert PIM slik at kvar forespørsel om tilgang måtte godkjennast frå den daglege brukarkontoen før den privilegerte kontoen fekk tilgang. Dette ville auka både tryggleik og kontroll.