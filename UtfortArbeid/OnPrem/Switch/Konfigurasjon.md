# Switchkonfigurasjon

#### Sette vlan 
I konsolet:
* configure terminal
* Vanleg interface
    * interface 1/1/PORT-NUMMER
    * vlan access VLAN-TAG
* Interface med server, switch eller brannmur
    * interface lag LAG-PORT
    * vlan trunk allow VLAN-TAG

* Sjå oversikt portar
    * show vlan brief
    * show interface brief

* Lagre: copy running-config startup-config

### VFS

Switch 1 port 48 > Switch 2 port 48
Switch 1 port 47 > Switch 2 port 48

I konsolet:
* configure terminal
* Switch 1
    * vfs member 1
    * link 1 1/1/48
    * link 2 1/1/48

* Switch 2
    * vfs member 1
    * link 1 1/1/48
    * link 2 1/1/48
    * vsf renumber-to 2

https://arubanetworking.hpe.com/techdocs/AOS-CX/10.09/PDF/vsf.pdf


### LAG/LACP

Switch 1 port 46 > kjerneswitch
Switch 2 port 46 > kjerneswitch

I konsolet:
* configure terminal
* interface lag 1
    * interface 1/1/46
    * interface 2/1/46
    * vlan trunk allow 65  