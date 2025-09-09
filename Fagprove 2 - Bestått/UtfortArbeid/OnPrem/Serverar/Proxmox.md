# Innstalasjon og konfigurasjon av proxmox VE



### Info
* I dette oppsette er det VMar sidan det allereie er eit kluster i bruk på fysiske serverar
* I tenkt oppsett har kvar node 2 netverkspluggar for rendundans og hastighet


### Innstalasjonsprosses
Last net iso https://proxmox.com/en/downloads

* Innstalasjonsdisk: 2x 100gb disk RAID1
* FQDM: node-pve0(1-3).fagprove.jarand.site
* IP: 10.101.0.1(1-3)/24
* Gateway: 10.101.0.1
* DNS: 1.1.1.1 8.8.8.8

### Konfigurasjon

**Velge reposetories**

(Verkelegheita hadde dette blitt bytt ut med enterprice)
På alle nodar

Managment interface:
* https://10.101.0.1(1-3):8006 

Datacenter > "node" > Update > Reposetory > Add
* No-Subscription
* Ceph squid No-Subscription

Repo > pve-enterprice dissable

Datacenter > "node" > Update > refresh + Upgrade

Datacenter > "node" > reboot

**Konfigurere netverk**

Datacenter > "node" > Network > Create > Linux bond
* Name: bond0
* slaves: ens18, ens19
* mode: LACP

På VM er dette gjort

* Fjerne default bridge (vmbr0)

Datacenter > "node" > Network > Create > Linux bridge
* Name: pve
* bridge ports: ens18
* IPv4: samme ip som host fikk under oppsett
* gateway: 10.101.0.1

Datacenter > "node" > Network > Create > Linux bridge
* Name:ceph
* bridge ports: ens19
* IPv4: 10.101.101.1(1-3)
* gateway: 10.101.101.1

I ein ekte situasjon hadde dette blitt gjort (her blir det flytta frå untagget til tagged i switch)

Datacenter > "node" > Network > Create > Linux vlan
* name: vlan101 (vlanX X = vlan tag)
* vlan raw device

Datacenter > "node" > Network > Create > Linux bridge
* Name: pve
* bridge ports: vlan101
* IPv4: samme ip som host fikk under oppsett
* gateway: 10.101.101.1

Gjentas for kvart vlan som er i bruk.

**Opprette cluster**

Node 1 (10.101.0.11)
Datacenter > Cluster > create cluster
* CLuster name: pve-cl10
* Cluster netowork: 10.101.0.11

* Join infomation: copy information

Node 2,3 (10.101.0.1(2-3))
Datacetre > cluster > join cluster
* Information: ctl+v frå seksjonen over
* Cluster netowork: 10.101.0.1(2-3)

**Sette opp ceph**

Datacenter > "node" > ceph > Install ceph
* info
    * cersion: squid XX (19.2 i dette tilfele)
    * repo: No-subcription
* Configuration
    * Publick network: 10.101.101.0/24
    * Cluster network: 10.101.101.0/24

Legge til diskar i filclusteret (må fordelast likt med kapasitet)

Datacenter > "node" > disks, for oversikt over diskar

Datacenter > "node" > ceph > OSD > Create OSD
* Disk: /dev/sdb (! merk diskar kan endre navn)
* DB disk: use osd disk

Opprette lagringsområde for VMar

Datacenter > "node" > ceph > Pools > Create
* Name: VMSTORE-FAST-01

## Resursar
https://pve.proxmox.com