# SSL Decryptin via SSL Proxy
&nbsp;
## Kvifor

- **Innsyn i kryptert trafikk:** SSL Decryption gjer det mogleg å inspisere kryptert HTTPS-trafikk som ellers ville vore skjult for sikkerheitsløsningar, som antivirus, IDS/IPS, og brannmurar.
- **Forhindre truslar:** Mange angrep og ondsinna filer skjuler seg bak kryptering. Uten decryption kan slike truslar passere usett.
- **Overhalding av policy:** Organisasjonen kan sikre at brukarar ikkje får tilgang til uønska eller farlege nettsider, sjølv om trafikken er kryptert.

## Korleis
### Oprette CA serfikat
Device > Certificate management > Certificates > Generate

* Certificate Type: Local
* Certificate Name: SSLProxyCA
* Common Name: SSLProxyCA
* Certificate Authority: Yes
* Algorithm: RSA
* Number of Bits: 4096
* Digest: sha256
* Expiration (days): 365

Og serfikat som blir brukt:

* Certificate Type: Local
* Certificate Name: SSLProxy
* Common Name: SSLProxy
* Signed by: SSLProxyCA
* Certificate Authority: Yes
* Algorithm: RSA
* Number of Bits: 4096
* Digest: sha256
* Expiration (days): 365

Åpne serfikatet > Forward Trust Certificate

### Oprette valnleg serfiakt
Device > Certificate management > Certificates > Generate

* Certificate Type: Local
* Certificate Name: SSLProxyUntrust
* Common Name: SSLProxyUntrust
* Certificate Authority: Yes
* Algorithm: RSA
* Number of Bits: 4096
* Digest: sha256
* Expiration (days): 365

Åpne serfikatet > Forward Untrust Certificate

### Oprette dekrypteringsprofil
Objects > Decryption Decryption Profile > Add 

* SSL Decryption > SSL Forward Proxy
    * Navn: SSLProxy
    * Block sessions with expired certificates: Yes
    * Block sessions with untrusted issuers: Yes
    * Block sessions with unknown certificate status: Yes
    * Block sessions on certificate status check timeout: Yes
    * Restrict certificate extensions: No
    * Append certificate's CN value to SAN extension: Yes
    * Block sessions with unsupported versions: Yes
    * Block sessions with unsupported cipher suites: Yes
    * Block sessions with client authentication: Yes
    * Block sessions if resources not available: no
    * Block downgrade on no resource: no
    * Strip ALPN: no

* SSL Decryption > SSL Protocol Settings
    * Min Version: TLSv1.2
    * Max Version: Max 

### Aktivere dekryptering på eit nettverk
* Policies > Decryption > Add
    * Source: Alle nett **I dette tilfele er det berre dei netta som er i bruk for å ungå å øydlege for nadre**
    * Destination: Any
    * Service: Any

* Options:
    * Action: Decrypt
    * Type: SSL Forward Proxy
    * Decryption Profile: SSLProxy

## Resursar
https://docs.paloaltonetworks.com/network-security/decryption/administration/decryption-overview/ssl-forward-proxy