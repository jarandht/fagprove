## Proxmox

Grunna den kjøyre database treng dn ein cpu tupe som søttar det. Er endra til host


## Innstaler docker:

# https://docs.docker.com/engine/install/ubuntu/


## Config

sudo mkdir -p /data/semaphore/certs

sudo chmod -R 700 /data

sudo apt install certbot -y

sudo certbot certonly --manual --preferred-challenge dns --key-type rsa --rsa-key-size 2048 -d gitlab.fagprove.jarand.site

sudo cp /etc/letsencrypt/live/semaphore.fagprove.jarand.site/{fullchain.pem,privkey.pem} /data/semaphore/certs/

sudo chown -R serveradmin:serveradmin /data

sudo chown root:root certs

sudo chmod -R 600 /data/semaphore/certs/*

nano /data/semaphore/docker-compose.yaml 
# tilpass envs 

nano /data/semaphore/.env 
# tilpass envs 

sudo chmod -R 600 /data/semaphore/docker-compose.yaml

sudo chmod -R 600 /data/semaphore/.env

cd /data/semaphore

docker compose up -d

sudo nano /etc/cloud/templates/hosts.debian.tmpl
# legg til gitlab og semaphore ip og domene