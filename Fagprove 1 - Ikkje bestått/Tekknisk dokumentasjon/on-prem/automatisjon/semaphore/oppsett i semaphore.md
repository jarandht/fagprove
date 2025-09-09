## 

## Key store

Legg inn SSH nyklar for ansible brukar til serverar og administrator brukar på serverar samt gitlab access token


## Reposetories

Legg inn gitlab ansible repo med access token


## Inventory 

Oprettar inventory som peikar til gitlab og brukar serveradministrator ssh nøkkel


## Varable groups

Opprrettar variable groups som fyll inn trengte variablar i ansible playbook passord, keys og cert blir lagt under secrets


## Task templates

Opprettar tasks som peiker til playbooks i gitlab of tildlgare oppretta inventory og variable groups