# Palo alto sine url filter
&nbsp;
##  Kvifor?

- **Beskyttelse mot truslar:** URL-filter blokkerer tilgang til skadelige eller kompromitterte nettsider før brukaren rekk å opne dei.

- **Kontroll over nettbruk:** Gir administratorar moglegheit til å styre kva typar nettsider brukarar har tilgang til, basert på kategoriar som «sosiale medium», «narkotika», «porno», osv

- **Redusert angrepsflate:** Ved å hindre tilgang til ukjende eller dårleg rangerte URL-ar, reduserer ein risikoen for phishing, malware og botnet-kontakt.

- **Sanntidsoppdateringar:** Bruker Palo Alto sin trusselintelligens (PAN-DB) som kontinuerleg oppdaterer kategoriar og trusselnivå for millionar av nettadresser.

- **Policy-basert filtrering:** Ein kan lage detaljerte sikkerheitspolicyar for ulike brukargrupper (t.d. elevar, tilsette, gjester) basert på behov og risiko.
 
- **Compliance og logging:** Filtreringa bidreg til overhald av lover og retningslinjer, og gir detaljerte loggar for revisjon og etterforsking.

## Korleis?

### Konfigurere lista
Object > Security profiles > URL Filtering > Add

* Name: palo-alto
* Catoegories

    * Site access (på dei ein vil bloke): Block

### Aktivere lista i policy
Policies > Security

På regelen som gir internett > Actions

*  Profile Settings
    * Profile type: Profiles
        * URL Filtering: palo-alto

## Resursar:
https://docs.paloaltonetworks.com/advanced-url-filtering/administration/url-filtering-basics/url-categories