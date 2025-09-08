# Netverksoversikt

| Server | ip | nettverk | dns | teneste |
|-----|---|---|---|---|
| srv-app-semaphore01 | 10.10.0.10 | Infrastruktur | semaphore.fagprove.jarand.site | senaphore UI automatisjonsverktøy |
| srv-app-gitlab01 | 10.12.0.20  | Server | gitlab.fagprove.jarand.site | Git server |
| srv-app-netbox01 | 10.12.0.21  | Server |         | Netverksdokumentasjonsverktøy |
| srv-app-minio01-04 | 10.100.0.10-13 | Backup | | S3 Objektlagring og administrasjon |
| minio VIP | 10.100.0.14 | Backup | | Viretuel IP for minio failover |
| srv-pbs01 | 10.100.0.15 | Backup | | Backup server for viretuelle maskiner | 
| Global protect | 10.220.0.1 | Klient | vpn.fagprove.jarand.site | Global protect portal for tilkoplin |
| srv-app-technitium01 | 10.220.0.2  | Klientnett |         | DHCP server for klientar |
| srv-app-technitium02 | 10.61.0.2  | AP |         | DHCP server for AP |

| Nettverk | Subnet | tenester | Vlan ID |
|-----|---|---|---|
| Infrastruktur | 10.10.0.0/24 | Nett for drift tenester med privilegium | 10 |
| Server | 10.12.0.0/24 | Nett for generelle serverar | 12 |
| Backup | 10.100.0.0/24 | Nett for backup tenester | 100 |
| Klient | 10.220.0.0 | Klientnett | 220 |
| PVE-CL01 | 10.101.0./24 | PVE cluster 1 | 101 |
| Mgmt | 10.65.0.0/24 | Managment | 65 | 
| AP | 10.61.0.0/24 | Aksespungt | 61 | 