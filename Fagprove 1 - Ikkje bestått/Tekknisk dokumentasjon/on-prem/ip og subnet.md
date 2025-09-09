# Ip og server

| Server | ip | nettverk | dns | teneste |
|-----|---|---|---|---|
| srv-app-semaphore01 | 10.10.0.10 | Infrastruktur | semaphore.fagprove.jarand.site | senaphore UI automatisjonsverktøy |
| srv-app-gitlab01 | 10.12.0.20  | Server | gitlab.fagprove.jarand.site | Git server |
| srv-app-netbox01 | 10.12.0.21  | Server |         | Netverksdokumentasjonsverktøy |
| srv-app-minio01-04 | 10.100.0.10-13 | Backup | | S3 Objektlagring og administrasjon |
| minio VIP | 10.100.0.14 | Backup | | Viretuel IP for minio failover |
| srv-pbs01 | 10.100.0.15 | Backup | | Backup server for viretuelle maskiner | 
| Global protect | 10.220.0.1 | Klient | vpn.fagprove.jarand.site | Global protect portal for tilkoplin |

| Nettverk | Subnet | tenester |
|-----|---|---|
| Infrastruktur | 10.10.0.0/24 | Nett for drift tenester med privilegium |
| Server | 10.12.0.0/24 | Nett for generelle serverar |
| Backup | 10.100.0.0/24 | Nett for backup tenester |
| Klient | 10.220.0.0 | Klientnett |