## Filesystem for gitlab data

sudo mkfs.xfs /dev/sdb

sudo mkdir -p /mnt/gitlab

sudo mount /dev/sdb /mnt/gitlab

sudo chown -R YOURUSER:YOURUSER /mnt/gitlab

sudo chmod 700 /mnt/gitlab

sudo blkid (find disk id)	

sudo nano /etc/fstab

UUID=4ae284f2-898f-46ff-98c4-98c5381668f2    /mnt/gitlab   xfs    rw,relatime,discard   0    2


## Innstaler docker:

# https://docs.docker.com/engine/install/ubuntu/


## Config

sudo mkdir -p /data/gitlab/certs

sudo chmod -R /data 700 /data

sudo apt install certbot -y

sudo certbot certonly --manual --preferred-challenge dns --key-type rsa --rsa-key-size 2048 -d gitlab.fagprove.jarand.site

sudo cp /etc/letsencrypt/live/semaphore.fagprove.jarand.site/{fullchain.pem,privkey.pem} /data/semaphore/certs/

sudo chown -R serveradmin:serveradmin /data

sudo chmod -R /data 600 /data/gitlab/certs/*

nano /data/gitlab/docker-compose.yaml # endre sertifikat, nøkken og url 

sudo chmod -R /data 600 /data/gitlab/docker-compose.yaml

cd /data/gitlab

docker compose up -d

sudo docker exec -it gitlab cat /etc/gitlab/initial_root_password # passorded til automatisk gennerert admin brukar


## Migration/Restore/backup: (copy files over with right file permsisions and user permissions)

Run: 

gitlab-backup create

/var/opt/gitlab/backup

Copy .tar file


Copy theese form config:

/srv/gitlab/config/

gitlab-secrets.json  gitlab.rb


Registry:

/var/opt/gitlab/gitlab-rails/shared/registry (copy over the registry your want)

On new host run: gitlab-backup create restore

## Tools

Get upgrade path

https://gitlab-com.gitlab.io/support/toolbox/upgrade-path/