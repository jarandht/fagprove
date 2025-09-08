# Sette opp område per avdeling

## Kvifor 
For å ferdig satt opp område til sluttbrukarane og deira avdeling med epsot og team/sharepoint

## Korleis

### Opprette dynamisk gruppe
Logg deg inn i microsoft entra (https://entra.microsoft.com) > groups > add
* Group type: Microsoft 365
* Group name: IT
* Membership type: Dynamic user
* Dynamic user members: Add dynamic query

| Property | Operator | Value |
|-----|---|---|
| department | Equals | HR | 
* Create

**Teams/Sharepoint:** HR

**Epost:** hr@fagprove.jarand.site



### Dette blir gjort for kvart klassetrinn på kvar skule:

| And/Or | Property | Operator | Value |
|-----|---|---|---|
|| comapanyName | Equals | Skuel 1 |
| And |  department | Equals | 7 trin |

## NB
Gjentas for kvar avdeling som skal ha eige område

Dette kan og scriptast og kvar avdeling kan få si eiga team automatisk med dette er veldi avhengi av avdelingsstrukturen i kommunen