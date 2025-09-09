#### Opprette brukar i switch

    oppretta brukar med passord i switch web gui

    consol:

    user backuper authorized-key ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJBYfDg32kKMNaiyG1tAjMpYCKb7STK78fWr93nMvX9C

#### Opprette API brukar i brannmur

Device > Administrators > Add
* name: backuper
* administrator type: dynamic
    * superuser

    Finne api nøkkel
    https://<firewall-ip>/api/?type=keygen&user=<username>&password=<password>

#### Opprette brukar

    sudo useradd -r -s /sbin/nologin --no-create-home backuper

#### Opprette lagringsområde

    sudo mkdir -p /data/backup/firewall
    sudo mkdir /data/backup/switch
    sudo nano /data/backup/backup.sh
    sudo nano /data/backup/key
    sudo chown backuper:backuper -R /data/backup
    sudo chmod 600 -R /data/backup
    sudo chmod 700 -R /data/backup/backup.sh

#### Opprette script

    #!/bin/bash

    SWITCH_DIR="/data/backup/switch"
    FW_DIR="/data/backup/firewall"
    FW_API=""
    FW_IP=""
    SWITCHES=("", "", "")
    KEEP_LAST="10"

    for IP in "${SWITCHES[@]}"; do
        BACKUP_FILE="$SWITCH_DIR/switch-$IP-$(date +%Y%m%d_%H%M).cli"
        
        echo "Backing up switch $IP..."
        ssh -i ./key backuper@"$IP" "show startup-config" > "$BACKUP_FILE"
        
        ls -1t "$SWITCH_DIR"/switch-"$IP"-*.cli | tail -n +$KEEP_LAST | xargs -r rm --
    done

    curl -kG "https://$FW_IP/api/?type=export&category=configuration&key=$FW_API" > "$FW_DIR/running_$(date +%Y%m%d_%H%M).xml"
    ls -1t "$FW_DIR"/*.xml | tail -n +$KEEP_LAST | xargs -r rm --


**Automatisere skript**

    sudo crontab -e -u backuper

    0 * * * * /data/backup/backup.sh

