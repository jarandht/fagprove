# Brannmur policies / reglar / NAT

## Info
Dei som ikkje har fulført VG testen opplevde eg at snakka med mange forskjellige IP addresser eller bruker mange forskjellige portar. Og sidan brannmuren er veldig treg er det vanskeleg å utføre optimal netstengning av nettet i den korte tida som me har på fagprøven. De er lagt inn forbetringar som ahdde vå gjort på reglane om det hadde vert tid.

## Block
| Fra | Applikasjon/Service/Port | Til | Aksjon | Kvifor |
|-----|---|---|---|---|
| Any | Any | Palo IP lister | Block | Palo lager lister med IPer som kan være skadlige |
| Palo IP lister | Any | Any | Block | Palo lager lister med IPer som kan være skadlige |

## Inside til utside felles og klienta
| Fra | Applikasjon/Service/Port | Til | Aksjon | Tilleg | Kvifor | Forbetringar |
|-----|---|---|---|---|---|---|
| Klientar & Admin | DNS (prot 53) | 1.1.1.1, 8.8.8.8 | Allow || Dei som har låst ned internatt trafikk får DNS | |
| Klientar & Admin | Any | Internett | Allow | palo-alto url liste | Internetttilgong | Nåst ned til berre dei netresyrsane som er i bruk om det lar seg gjerre i henhald til sluttbrukarar, og i minstefall stenge ned til berre spsifike portar |
| Klientar & Admin | Any | 10.220.0.1 | Allow || For å kople seg til VPN | I ein reel situasjon hadde ikkje denne vore trengt
| Klientar | DHCP (port 67, 68 ) | srv-app-dhcp | Allow || For å få DHCP |
| Admin | ssh, ssl | switch, brannmur, proxmox, netbox | Allow || Fo rå administrere | Begrense til brukar i globalprotect
## Inside til utside serverar
| Fra | Applikasjon/Service/Port | Til | Aksjon | Tilleg | Kvifor | Forbetringar |
|-----|---|---|---|---|---|---|
| Alle docker serverar | apt (port 443, 80, 21)                                     | [Ubuntu reposetory](BrannmurDomeneLister.md)              | Allow | palo-alto url liste | Nødvendige oppdateringar, patchar og programmvare 
| Alle ubuntu serverar | apt, ssl, web-browsing (port 443, 80, 21)                  | [Docker reposetory og registry](BrannmurDomeneLister.md) | Allow | palo-alto url liste | Nødvendige oppdateringar, patchar og programmvare 
| srv-app-netbox        | ssl, web-browsing, ms -office, github-base (port 443, 80) | Any                                                       | Allow | palo-alto url liste | Microsoft API for brukarinfo | Stenge ned til berre Microsoft API for brukarinfo |
| Proxmox serverar      | apt (port 443, 80, 21)                                    | Any                                                       | Allow | palo-alto url liste | Nødvendige oppdateringar, patchar og programmvare | Stenge ned til berre [Proxmox reposetory](BrannmurDomeneLister.md)
| Veeam       | Microsoft update                                    | Any                                                       | Allow | palo-alto url liste | Nødvendige oppdateringar, patchar og programmvare | Begrense til microsoft ip

## Server til server
| Fra | Applikasjon/Service/Port | Til | Aksjon | Tilleg | Kvifor | Forbetringar |
|-----|---|---|---|---|---|---|
| Veeam                 | any                                                       | pve-cl01                                                  | Allow || Proxmox konsoll og api | Begrense portar |
| Veeam og veeam worker | any                                                       | Veeam og eeam worker                                       | Allow | | konfigrasjon og komunikasjon med VM i proxmox clusteret som gjer delar av backup jobben | Begrense portar |
| srv-app-backup        | ssh (port 22)                                             | Aruba CX switcha                                                      | Allow | | Uthenting av konfigurasjon ||
| srv-app-backup        | ssl (port 443)                                            | Brannmur                                                     | Allow | | Uthenting av konfigurasjn frå API ||

## Block (nederst)
| Fra | Applikasjon/Service/Port | Til | Aksjon | Kvifor |
|-----|---|---|---|---|
| Any | Any | Any | Block | Skaffe loggar |

## NAT
| Fra | Til Zone | Til Interface | Service | Source address | destination address | Kvifor |
|----|---|---|---|---|---|---|
| Zoner med internet | Ant | ANt | Any | Ay | Any | For å gi internet til netta som treng det
