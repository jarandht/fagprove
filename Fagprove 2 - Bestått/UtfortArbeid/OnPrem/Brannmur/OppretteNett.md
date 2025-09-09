# Opprette nytte nettverk i brannmur

#### Opprette virituel ruter
Network > Virtual router > Add
* Router settings:
    * Name: FW01
* Static routes > Add
    * Name: Default
    * Destination: 0.0.0.0/0
    * interface 1/1
    * Next hop: IP Address
        * FW publib ip (I dette tilfile Voss herad sin brannmur)


#### Opprette nett
Network > Zones > Add
* Name: Alle nettverk sine navn
* Type: Layer 3

Network > Interfaces > ethernet 1/8 > Add
* Interface name: ethernet1/8.VLAN-TAG
* Tag: VLAN-TAG
* Config:
    * Virtual router: FW01
    * Security zone: Den oppretta over
* IPv4: sjå oversikt netverk
