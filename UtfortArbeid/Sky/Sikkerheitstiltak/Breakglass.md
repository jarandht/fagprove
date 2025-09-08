# Opprette brekglasskonto

## Kvifor?

Ein brukar break-glass-kontoar for å sikre tilgang til tenester i ein krisesituasjon der vanlege autentiseringsmekanismar som MFA eller PIM ikkje fungerer. Kontoen gir permanent global administratorrolle utan sikkerheitstiltak som kan feile. Den er unntatt frå alle Conditional Access-reglar og varsling ved bruk. Formålet er å ha ein siste utveg for å hindre full låsing av systemet.

## Korlies

### Inlogging

Logger inn med brukaren og gir middlertidig passord.
Det lagast eit langt passord som skrivast på ark og lagrast på ein trygg lokasjon
Det blir og registrert FIDO på brukaren. 

### Konfigurasjon

Logg inn i entra (https://entra.microsoft.com) > Opprett ny brukar og gruppe

* Brukar: GA-BG
* Gruppe: USERS - BG

Legg brukaren inn i gruppa

Logg inn på CA-BG og registrer Fido2

Tildel CA-BG brukaren Global Admin rolla

Denne gruppa leggast so inn i alle exclusions på conditional access

