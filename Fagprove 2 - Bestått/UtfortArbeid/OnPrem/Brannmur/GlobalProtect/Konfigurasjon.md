# Konfigurere Global Protect VPN

## Kvifor?
Å plassere alle klientar bak ein VPN sikrar at all trafikk blir kryptert og beskytta mot avlytting på offentlege nettverk. Det gir sentralisert kontroll og moglegheit til å overvake og styre tilgangen til interne ressursar. I tillegg styrkar det sikkerheita ved å hindre direkte eksponering av klientane mot internett. Samt all trafikk havnar bak brnnmuren sine filter og reglar. Og all trafikk blir knytt til den brukaren det gjeld.

## Korleis

### Info
Her blir VPNen ekponert på internt klientnett, i produksjon hadde den blitt eksponert på IPv4 og v6 utsideaddresser slik at den kan nåast frå kvar som helt.

### Før ein begynner

Generere serikat (linux):
    sudo apt install certbot
    sudo certbot certonly --manual --preferred-challenge dns --key-type rsa --rsa-key-size 2048 -d vpn.fagprove.jarand.site

Opprett FQDM serfikat og last opp i palo alto:
Device > Certificate management > Certificates > Import
* Certificate Type: local
* Certificate Name: domenenavn (I dette tilfelle vpn.fagprove.jarnad.site)
* Certificate file: Last opp serfikat
* File format: Base64 encoded certificate (PEM)
* Import private key: True
* Key file: Lat opp privatnøkel
* Passphrase: Generer passphrase og noter i passwordmanager

**Innstalere klienten**

Device > Global protect client 

6.3.0 > Download & Reactivate & Export

### Konfigurere VPN

Network > Global Protect > Portals > Add
* General: Network Settings
    * Name: Portal
    * Interface: klientinterface
    * IP address type: IPv4
    * IPv4 Address: 10.220.0.1

* Authentication
    * **!!! Sjå EntraID dokument [Link](SamlLogin.md) !!!**
    * SSL/TLS Service Profile: New
        * Name: Global Protect
        * Certificate: vpn.fagprove.jarand.site
        * Protocol settings:
            * Min version: 1.2
            * Max: Max
    * Client authentication: Add
        * Name: Entra ID
        * OS: any
        * Authentication profile: 

* Agent > Add
    
    * Name: Default
                                                                                   
* Agent > Default > App
    * Allow user to disconnect GlobalProtect App (Always-on mode): Dissallow