# Innstalasjon og konfigurasjon av netbox



#### Opprette lagringsområde

    sudo mkdir -p /data/netbox
    sudo chown serveradmin:serveradmin -R /data/netbox
    sudo chmod 700 -R /data/netbox

Lagt inn configurasjon for netbox:
https://github.com/jarandht/docker-containers/tree/main/Automation,%20Infra%20and%20networking/netbox/full-example

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

#### Lage cert

    sudo certbot certonly --manual --preferred-challenge dns --key-type rsa --rsa-key-size 2048 -d netbox.fagprove.jarand.site
    sudo cp /etc/letsencrypt/live/netbox.fagprove.jarand.site/fullchain.pem /data/netobx/certs/cert.pem
    sudo cp /etc/letsencrypt/live/netbox.fagprove.jarand.site/privkey.pem /data/netbox/certs/certkey.pem


#### Starte container

    sudo docker build . -t netbox

    **Opprette fyrste brukar**
    docker compose exec netbox /opt/netbox/netbox/manage.py createsuperuser

#### Entra ID inlogging

Entra ID > App registrations > New registration
* Name: Netbox
* Accounts in this organization directory only
* Redurect URI
    * Web
    * https://netbox.fagprove.jarand.site/oauth/complete/azuread-oauth2/

Netbox > Certificates and secrets > Client secrets > New client secret
* Description: Netbox SSO
* Expires: 12 months
* Value lagrast i passwordmanager

Entra ID > Enterprice apps > Netbox
* Properties
    * Assigment required: yes
* Users and groups > Add: APP - Netbox

Dessa fyllast ut i configen

Netbox server > /data/netboxx/configuration/configuration.py:

SOCIAL_AUTH_AZUREAD_OAUTH2_KEY='Application ID'
SOCIAL_AUTH_AZUREAD_OAUTH2_SECRET='Secret value'

### Resursar
https://netboxlabs.com/docs/netbox/?focus=community