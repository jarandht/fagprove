# Gi lærartilgong tikl å administrere pålogingsalternativa til enevane.

## Kvifor 
For å senke belastninga på IT avdelinga og gjere arbeidet med authentisering i skulane meir efektift blir lærarane tildelt denne tilgongen.

## Korleis

### Opprette administrasjongruppa
Logg deg inn i microsoft entra (https://entra.microsoft.com) > groups > add
* Group type: security
* Group name: ACCESS - Elev administrasjon
* Microsoft Entra roles can be assigned to the group: yes
* Create

### Opprette AU for elevar og lærarar
Logg deg inn i microsoft entra (https://entra.microsoft.com) > Administrativ units > add
* Name: Elevar

Inne på AU > Roles and administrators > Assignements > ACCESS - Elev administrasjon

**Her må brukarar laggest inn mannuelt eller via script som kjøyrast mot azure/microsoft sin API.**