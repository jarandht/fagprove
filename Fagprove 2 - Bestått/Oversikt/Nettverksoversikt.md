# Netverksoversikt

| Server | ip | nettverk | dns | teneste |
|-----|---|---|---|---|
| srv-app-netbox01 | 10.12.0.11  | Server |         | Netverksdokumentasjonsverktøy |
| srv-app-dhcp | 10.12.0.10  | Server |         | DHCP server |
| node-pve01 | 10.101.0.11  | PVE-CL01 |         | Proxmox cluster node |
| node-pve02 | 10.101.0.12  | PVE-CL01 |         | Proxmox cluster node |
| node-pve03 | 10.101.0.13  | PVE-CL01 |         | Proxmox cluster node |
| srv-app-veeam-worker01 | 10.101.0.50  | PVE-CL01 |         | Veeam worker for proxmox |
| srv-app-veeam-worker02| 10.101.0.51  | PVE-CL01 |         | Veeam worker for proxmox |
| srv-app-veeam-worker03 | 10.101.0.52  | PVE-CL01 |         | Veeam worker for proxmox |
| srv-app-veeam | 10.100.0.10  | Backup |         | Veeam applikasjonserver |
| srv-app-backup | 10.100.0.11  | Backup |         | Kjøyrer backup script mot switch og brannmur |
| Global protect | 10.220.0.1 | Klient | vpn.fagprove.jarand.site | Global protect portal for tilkoplin |

| Nettverk | Subnet | tenester | Vlan ID |
|-----|---|---|---|
|Elevnett | 10.13(1-4) | Elevnett | 13(1-4) |
| Admin | 10.221.0.0/24 | Administrator nett | 221 |
| Gjest | 10.81.0.0/24 | Gjestenett | 10 |
| Print | 10.229.0.0/24 | Printernett | 229 |
| Server | 10.12.0.0/24 | Nett for generelle serverar | 12 |
| Backup | 10.100.0.0/24 | Nett for backup tenester | 100 |
| Klient | 10.220.0.0 | Klientnett | 220 |
| PVE-CL01 | 10.101.0./24 | PVE cluster 1 | 101 |
| Mgmt | 10.65.0.0/24 | Managment | 65 | 
| AP | 10.61.0.0/24 | Aksespungt | 61 | 