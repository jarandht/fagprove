# Eigene URL filter for VG testen
&nbsp;
## Kvifor?
- **Minimere angrepsflate:** Ved å spesifisere eksakt kva domenenamn (FQDN), IP-adresser eller URL-ar ein server får kommunisere med, kan ein hindre kontakt med potensielt skadeleg infrastruktur på internett.

- **Styre eksakt trafikkflyt:** Serverar skal ofte berre ha tilgang til spesifikke tenester (t.d. oppdateringsserverar, lisensendepunkt, API-ar). Eit eige filter sikrar at berre desse vert tillate.

- **Hindre datalekkasjar og uautorisert kommunikasjon:** Filtrering på både domenenamn og IP-nivå kan stoppe uønska kommunikasjon og mistenkeleg aktivitet, sjølv om trafikken er kryptert.

- **Forbetra trusseldeteksjon:** All avvikande eller blokkert trafikk vert logga, noko som gir innsikt i moglege sikkerheitshendingar.

## Korleis

### FQDN/IP Filter

**Opprete liste**

- Object > Addresses
    
    - Opprette addresse objekt for domenenavna serverar treng:

        - Sjå [domenelister](../../../Oversikt/BrannmurDomeneLister.md)

- Opprett addresse grupper med addresser for spesifike serverar

    - Object > Adress Groups

**Sette regel**
| Fra | Applikasjon/Service/Port | Til | Aksjon |
|-----|---|---|---|
| Sonar/IP addresser med relevante serverar | SSL, Webbrowsing (port 443, 80) | Relevant Addresse liste | Allow |

**Etter dette må relevante serverar fjernast frå internet tilgong.**


### URl Filter

#### Info
**Å lage reglar med berre url filter legg ekstra unødvendig last på brannmur, derfor brukast det i lag med IP filter som det overfor. Då blir trafikk som ikkje er tillat blokkert på IP nivå uten at den treng å analysere URLar.**

#### Opprette URL liste
Objects > Custom objects > URL category > Add
* Navn: relevant navn
* Type: URL List
* Sites > Add
    * Legg inn relevante lister

Objects > Security Profiles > URL Filtering > Add
* Navn: relevant navn
* Velg block eller allow for valgte url kategoriar

#### Opprette regel
Policies > Security

På relevant regel > Actions

*  Profile Settings
    * Profile type: Profiles
        * URL Filtering: listenavn


## Resursar
https://docs.paloaltonetworks.com/advanced-url-filtering/administration/url-filtering-basics

https://gorantomte.no/vg-testen/