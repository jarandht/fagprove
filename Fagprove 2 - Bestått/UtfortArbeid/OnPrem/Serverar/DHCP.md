# Oppsett av DHCP server

## Kvifor
Ein dhcp server trengs for å automatisk tilderle IP addresser, gateway og dns. Dette for å gi klientar og maskinvare tilgong til internet og andre resursar i nettet.

## Korleis

#### Opprette lagringsområde

    sudo mkdir -p /data/technitium
    sudo chown serveradmin:serveradmin -R /data/technitium
    sudo chmod 700 -R /data/technitium

Lagt inn configurasjon for technitium:
https://github.com/jarandht/docker-containers/tree/main/Automation,%20Infra%20and%20networking/technitium/dhcp

#### Instalere docker

        # Add Docker's official GPG key:
        sudo apt-get update
        sudo apt-get install ca-certificates curl
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc

        # Add the repository to Apt sources:
        echo \
            "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
            $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
            sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update
        sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#### Sette opp dhcp scope
Logg inn på dhcp server:
https://10.12.0.10:5380 > DHCP > Scopes > Add scope
* Name: Klientar
* Starting address: 10.220.0.10
* Ending addres: 10.220.0.200
* Domain Name: fagprove.jarand.site
* Router address: 10.220.0.1
* DNS servers:
    * Use this dns server: false
    * 1.1.1.1
    * 8.8.8.8

**I eit ekte tilfelle hadde scopet vert større då det hadde vert fleire klientar**

#### Sette opp dhcp relay
I brannmur: Network > DHCP > DHCP relay > Add
* Interface: ethernet1/8.220
* IPv4 dhcp ip adddress: 10.12.0.10 > Add scope > 

**Dette vill då bli gjentatt for alle netta som skal ha DHCP (Gjestenett, AP nett) men i oppsettet er det berre klientnettet som har dhcp då det er det einaste som er i bruk**