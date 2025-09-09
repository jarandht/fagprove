# Kviteliste land og ip addresse

## Kvifor
* Begrense innlogging til én spesifikk IP reduserer risikoen for uautorisert tilgang ved å kun tillate pålogging fra en kjent, trygg adresse. Det gjør det vanskeligere for angripere å komme inn, selv om de har fått tak i brukernavn og passord.
* Begrense VPN-innlogging til kun Norge  gjør det enklere å oppdage og blokkere mistenkelig trafikk fra utenlandske IP-adresser, noe som øker sikkerheten ved å redusere potensielle angrep fra utenforlandske kilder.

## Korleis

### Opprette lokasjonar
Dette blir land og ip-addresser definert som variablar som du kan bruke i policies seinare.

Logg inn i entra (https://entra.microsoft.com) > Security > Conditiona access > Manage > Named Locations

Trykk "+ Cuntries location" > navngi "Norge" og velg norge
Trykk "+ IP range" > navngi "Frordvik Kommune" og skriv inn "IPv4/32" og "Ipv6/128"

### Opprette polecies

#### Land kvitelisting (Berre VPN)
Logg inn i entra (https://entra.microsoft.com) > Security > Conditiona access > Policies > New policy

* Navn: Whitelsit-Norge
* Users: All users

  * Exclude: Users and groups
      
    * Select excluded users and groups: Breakglass gruppe

* Target reclource
  
  * Include: All resources (formely 'all cloud apps')

* Network
   
  * Include: Any network or location
  * Exclude: Selected networks and locations
    
    * Select: Norge

* Grant: Block access
* Enable policy: On

#### IP Kvitelisting
Logg inn i entra (https://entra.microsoft.com) > Security > Conditiona access > Policies > New policy

* Navn: Whitelsit-IP
* Users: 
  
  * Include: All users

  * Exclude: Users and groups
      
    * Select excluded users and groups: Breakglass gruppe

* Target reclource
  
  * Include: All resources (formerly 'All cloud apps')

* Network
   
  * Include: Any network or location
  * Exclude: Selected networks and locations
    
    * Select: Fjordvik kommune

* Grant: Block access
* Enable policy: On