# Oversikt over oppsettet
Her er det lagt inn alle konfigurasjonar som er gjor i kva systm.

&nbsp;
# Sky ☁️

## Tillpassing av eigen tennant 🖌️

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| Tennant | Eige område i Azure. | Azure | Tenanten er hjertet det er her alle brukarar, grupper, roller og applikasjonar ligg. Når du logger inn i Entra, så er det din tenant du jobbar mot. |

### Oversikt

1. [Endre utsjåannde](../UtfortArbeid/Sky/TilpasseEigenTennant/EndreUtsjåande.md) 
1. [Legge inn eige domenenavn](../UtfortArbeid/Sky/TilpasseEigenTennant/EigeDomene.md)
1. [Gennerelle gruppeinstillingar](../UtfortArbeid/Sky/TilpasseEigenTennant/GennerelleGruppeInstillingar.md)

&nbsp;
## Brukeradministrasjon 👨

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| TAP | Temperary access pass | Entra ID | TAP gir brukeren en sikker og midlertidig måte å autentisere seg på, spesielt ved første gangs pålogging eller ved tap av vanlige metoder. |


### Oversikt

1. [Automatisk tilordne lisesns](../UtfortArbeid/Sky/Administasjon/Brukere/AutomatiskTilordneLisens.md) 
1. [Oppsett av ny brukar](../UtfortArbeid/Sky/Administasjon/Brukere/NyeBrukarar.md)
1. [Gi lærar tilgong til å administrere elevar](../UtfortArbeid/Sky/Administasjon/Brukere/LerarTilgong.md)
1. [Tingongstyring internt hjå IT](../UtfortArbeid/Sky/Administasjon/Brukere/TilgongarInterntPaIT.md)
1. [Tingongstyring internt hjå IT](../UtfortArbeid/Sky/Administasjon/Brukere/SetteBillingAccount.md)

&nbsp;
## Klientmaskin administrasjon ⌨️

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk |
|----|---|---|---|
| Windows Hello | Ein måte å logge inn utan passord, med ansiktsgjenkjenning, fingeravtrykk eller PIN. | Windows/Entra | Gjer pålogging sikrare og enklare, sidan ein slepp å hugse og skrive inn passord. |
| Compliance | Sjekk av at einingane oppfyller definerte tryggleikskrav (t.d. antivirus, kryptering, oppdateringar). | Intune | Brukast for å sikre at berre trygge og oppdaterte einingar får tilgang til system og data. |
| LAPS (Local Administrator Password Solution) | Verktøy som automatisk lagar unike og tidsavgrensa administratorpassord på PC-ar. | Intune | Hindrar at same lokaladmin-passord blir brukt overalt, og aukar tryggleiken. |
| Autopilot | Teneste for utrulling og oppsett av nye PC-ar direkte frå fabrikk til brukar. | Intune | Gjer det mogleg å sende PC-ar rett til sluttbrukar, som får dei ferdig konfigurert utan IT må setje dei opp manuelt. |


### Oversikt

Sjå [feilsøking](../Feilsoking/Intune.md) for feilsøking.

1. [Legge intune inn i entra](../UtfortArbeid/Sky/Administasjon/Maskinvare/LeggeTilIntuneIEntra.md) 
1. [Dynamisk enhetsgruppe](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/DeviceGruppe.md) 
1. [Generelle Enhetsintillingar](../UtfortArbeid/Sky/Administasjon/Maskinvare/Enhetsinstillinger/DeviceSettings.md) 
1. [Windwos hello](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/WindowsHello.md)
1. [Autentiserings instillingar](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/AutentiseringsInstillingar.md)
1. [Compliance policy](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/DefaultCompliancePolicy.md)
1. [Windows update](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/WindowsAutopatch.md)
1. [Utrulling av serfikat](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/SSLProxySerfikart.md)
1. [Antivirus](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/EndpointSecurity/Antivirus.md)
1. [Endepungt overvakning](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/EndpointSecurity/EDR.md)
1. [Disk kryptering](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/EndpointSecurity/Encryption.md)
1. [Brannmur](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/EndpointSecurity/Firewall.md)
1. [Lokal admin brukar](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/EndpointSecurity/LAPS.md)
1. [App: Microsoft 365](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/Apps/Microsoft365.md)
1. [App: Global Protect](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/Apps/GlobalProtect.md)
1. [Autopilot](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/Autopilot.md)
1. [Innrullere enehet](../UtfortArbeid/Sky/Administasjon/Maskinvare/Windows/InnrullereEnhet.md)

&nbsp;
## Tilrettelegge Microsoft 365 💻

### Oversikt

1. [Fellesområder og epost](../UtfortArbeid/Sky/Administasjon/M365/OmrådePerAvdeling.md) 
1. [Felles postboks og kalender](../UtfortArbeid/Sky/Administasjon/M365/FellesPostboksOgKalender.md) 

&nbsp;
## Sikkerheitstiltak 🔐

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| Breakglass | Ein break-glass-konto er ein nødbrukarkonto med full tilgang som brukast berre ved krisesituasjonar. | Entra ID | Break-glass-kontoen finst for å sikre tilgang til tenester dersom vanlege administrative brukarar blir låste ute. Han skal berre brukast i nød, og overvåkast og sikrast spesielt godt.| 
| Conditional access | Conditional Access styrer tilgang basert på vilkår. | Entra ID | Conditional Access beskyttar ressursar ved å krevje ekstra vilkår før innlogging. Det gjer at berre autoriserte brukarar får trygg tilgang. |
| Phising resistant MFA | Phishing-resistant MFA er to-faktor autentisering som ikkje kan lurerast via falske påloggingssider. | Entra ID | Det gir sterkare sikkerheit enn vanleg MFA ved å hindre at angriparar får tilgang gjennom phishing. | Det beskyt brukarkontoar og sensitive data effektivt. |
| Compliant device | Ein compliant device er ein eining som oppfyller organisasjonens sikkerheitskrav. | Intune | Sikrar at berre trygge og godkjende einingar får tilgang til ressursar. |
| Passkeys | Passkeys er passordfrie innloggingar med biometrisk eller PIN-basert autentisering. | Entra ID | Passkeys er sikrare enn passord fordi dei ikkje kan gissast eller fiskast. Dei gjer òg innlogging raskare og enklare for brukarar.| 
 
### Oversikt

1. [Opprette breakglass konto](../UtfortArbeid/Sky/Sikkerheitstiltak/Breakglass.md)
1. [Conditional access: Phising resistant MFA](../UtfortArbeid/Sky/Sikkerheitstiltak/ConditionalAccess/PhishingResistantMFA.md) 
1. [Conditional access: Kviteliste land og IP addrese](../UtfortArbeid/Sky/Sikkerheitstiltak/ConditionalAccess/KvitelisteLandOgIP.md) 
1. [Conditional access: Compliant device](../UtfortArbeid/Sky/Sikkerheitstiltak/ConditionalAccess/CompliantDevice.md)
1. [Conditional access: Microsoft standard policies](../UtfortArbeid/Sky/Sikkerheitstiltak/ConditionalAccess/MicrosoftDefaultPolicies.md)
1. [Begrense kva typar passkeys som kan brukast](../UtfortArbeid/Sky/Sikkerheitstiltak/BegrensePasskeysTypar.md)
1. [Sikring av eige domene](../UtfortArbeid/Sky/Sikkerheitstiltak/SikringAvEigeDomene.md)
1. [Brukar innstillingar](../UtfortArbeid/Sky/Sikkerheitstiltak/BrukarInstillingar.md)


&nbsp;

&nbsp;
# On prem 🏢

## Brannmur 🚫

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| Palo alto | Firmaet som lager brannmur | | |
| SSL dekryptering | Å dekryptere trafikk som går via brannmuren | SSL-Decryption | SSL Decryption gir innsikt i kryptert trafikk for å avdekke truslar, håndheve sikkerheitspolicyar og beskytte mot skjulte angrep. |
| VG testen | Å begrense internet tingong | Brannmur policies med IP, FQDM og URL filter | For å redusere angrepsflate, hindre datalekkasjar og sikre at berre godkjend trafikk får tilgang til eller frå internett. |
| Palo alto url lister | Ferdiglaga lister med url kategoriar | URL Filtrering | For å enkelt blokkere eller tillate kategoriar av nettsider basert på oppdatert trusselinformasjon frå Palo Alto, utan å måtte vedlikehalde eigne lister. |
| Palo alto ip lister | Ferdiglaga lister med url kategoriar | IP blokkering | For å automatisk blokkere eller tillate trafikk til kjende IP-adresser basert på oppdatert trusselinformasjon frå Palo Alto eller tredjepartsfeedar, utan å måtte vedlikehalde eigne reglar manuelt. |
| VPN | Virtual private network | Palo alto Global Protect | For å sikre klientar bak ein trygg brannmur uanset kvar eininga befinner seg |

### Oversikt

Alle brannmur reglar: [Reglar](BrannmurReglar.md)
Alle brannmur domenelister: [Lister](BrannmurDomeneLister.md)
Nettverksoversikt: [Lister](Nettverksoversikt.md)

Sjå [feilsøking](../Feilsoking/Brannmur.md) for feilsøking.

Under er korleis desse policyane er lagd og andre konfigurerte innstilingar i brannmur:


1. [Opprette nettverk](../UtfortArbeid/OnPrem/Brannmur/OppretteNett.md) 
1. [SSL dekryptering](../UtfortArbeid/OnPrem/Brannmur/SSLDecryption.md) 
1. [VG testen](../UtfortArbeid/OnPrem/Brannmur/VGTesten.md) 
1. [Palo alto automatiske URL lister](../UtfortArbeid/OnPrem/Brannmur/PaloAltoURLLister.md)
1. [Palo alto automatiske IP lister](../UtfortArbeid/OnPrem/Brannmur/PaloAutoIPLister.md)
1. [VPN konfigurasjon](../UtfortArbeid/OnPrem/Brannmur/GlobalProtect/Konfigurasjon.md)
1. [VPN inlogging med entra id](../UtfortArbeid/OnPrem/Brannmur/GlobalProtect/SamlLogin.md) 

&nbsp;
## Switch 🦺

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| VSF | (Virtual Switching Framework) gjer at fleire svitsjar kan oppførast som ein svitsj | Switch | Dette forenklar nettverksadministrasjon, aukar redundans og gir betre skalerbarheit. |
| LAG | (Link Aggregation) er ei løysing som samlar fleire nettverkskablar til éin logisk link. | Switch | LAG gjer at fleire nettverkskablar kan koplast saman for høgare fart og betre tryggleik mot nedetid sidan trafikken kan gå vidare om éin kabel feilar. |

### Oversikt
1. [Switchkonfigurasjon](../UtfortArbeid/OnPrem/Switch/Konfigurasjon.md)

&nbsp;
## Serverar 🤖

Nettverksoversikt: [Lister](Nettverksoversikt.md)

###  Ordliste
| Ord | Betydning | System | Kvifor i bruk 
|----|---|---|---|
| Netbox | Appliksjon for netverksdokumentasjon | Netbox | For å dokumentere netverket og i framtida kunne bruka API for å automatisere oppgåver |

### Oversikt
1. [Proxmox (Viritualiseringsplatform)](../UtfortArbeid/OnPrem/Serverar/Proxmox.md)
1. [Standard linux server oppsett](../UtfortArbeid/OnPrem/Serverar/StandardLinux.md)
1. [DHCP](../UtfortArbeid/OnPrem/Serverar/DHCP.md)
1. [Netbox](../UtfortArbeid/OnPrem/Serverar/Netbox.md)

&nbsp;
## Backup 🧨

Korlies resturere frå backup: [Lister](ResturereBackup.md)

### Oversikt
1. [Backup av brannmur og switch](../UtfortArbeid/OnPrem/Serverar/Backup/BrannmurOgSwitch.md)
1. [Konfigurasjon av Veeam](../UtfortArbeid/OnPrem/Serverar/Backup/VeeamInnstalasjon.md)

&nbsp;
## Print 🧾

### Oversikt
1. [Print](../UtfortArbeid/OnPrem/Print/Print.md)