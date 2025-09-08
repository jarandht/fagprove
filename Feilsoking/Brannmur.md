# Feilsøking i Palo Alto brannmur

## Sjå loggar på SAML authentisering i Palo Alto
1. **Logg in med ssh eller i konsollet på brunnmur**

        ssh brukar@ip

    1. **Vise loggar mens det skjer**
            
            tail follow yes mp-log authd.log

## Teste Global protect login uten entra:
Network > Global Protect > Portals > Add
* Authentication: Add

    * Name > Local
    * Authentication profile: local
    * Ok

**Lege til lokalbruker**
Device > Local user database > Users > Add

Etter dette kan du prøve å logge på i kilent eller på protalern (ip eller domenet til globalprotect)