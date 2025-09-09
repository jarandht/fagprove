# Generelle gruppeinstillingar

## Kvifor?
Dette er for å sikre at alle grupper får konsekvente og oversiktlege namn, som automatisk viser kva avdeling og organisasjon dei høyrer til. Dette gir:
* Betre struktur – lett å forstå kven gruppa tilhøyrer
* Unngår upassande eller forvirrande namn
* Forenklar administrasjon – spesielt i store organisasjonar med mange grupper

## Korlies

### Gruppeinstillingar
Logg inn i entra (https://entra.microsoft.com) > Groups > Settings

#### General
* Self Service Group Management: True
* Restrict user ability to access groups: True
* Security Groups: False
* Microsoft 365 Groups: True

#### Expiration
Denne hadde blitt brukt får å automatisk fjerne ubrukt Teams sharepoint osv. Men hå eg ikkje har P2 lisens får eg ikkje brukt dette.

#### Naming policy

**Blocked words**
* HR avdeling får i oppgåve å samle ei liste med ord som er upassande

**Grup naming policy**
* Add suffix
    1. String: " | "
    1. Attribute: Department
    1. String: "-"
    1. Attribute: Company

Då blir alle teams og grupper oppretta av sluttbrukara navngitt slik: 

    <Group name> | <Department> - <Company>