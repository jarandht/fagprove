# Innstalasjon av Veeam

## Kvifor

## Korleis

### Før ein begynna
Det er satt opp ein standard windows server 2025 med mounta ISO fil for Veeam backup and replication programmvara.

Det er og 2 seperat viretuel diskar oppretta for å lagre applikasjon og backup dataen.

(Backup datadisk i ReFS format, med unit site 64k)

#### Innstalasjon
Server > ISO > Setup.exe > Install Veeam backup & replication > Accept lisens

* Service account: LOCAL SYSTEM account
* Database: PostgresSQL
    * Install new instance
    * Database credentials: Windows credentials
    * Data locations: VeeamApp disk
* Port config
    * Standard instilling
* Install

#### Konfigurasjon

**Backup lokasjon (backup reposetory)**

Backup infrastructure > Backup reposetories > Direct attaached storage > Microsoft windows
* Name: local0101
* Repository:
    * Populate: VeeamData
* Next > Next > Next > Finish

**Legge inn proxmox**

Backup infrastructure > Managed servers
* Name
    * IP: 10.101.0.11
    * Description: node-pve01
* Credentials: root
* Snapshot storage:
    * local
* Apply
* Deploy worker server: yes
    * VM
        * Name: Backup infrastructure >
        * Storage: VMSTORE-FAST-01
    * Networks
        * DNS: 1.1.1.1, 8.8.8.8
        * pve
        * uset the following IP:
            * IP: 10.101.0.50
            * Mask: 255.255.255.0
            * Gateway: 10.101.0.1


## Resources

https://helpcenter.veeam.com/docs/vbproxmoxve/userguide/connecting_manager.html?ver=2
