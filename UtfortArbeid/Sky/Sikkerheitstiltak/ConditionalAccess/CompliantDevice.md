# Tvinge Compliant Device login

## Kvifor?
Å bruke Force Compliant Device login i Conditional Access sikrer at kun enheter som oppfyller bedriftens sikkerhetspolicyer (f.eks. oppdatert antivirus, kryptering, sikkerhetskonfigurasjoner) får tilgang til bedriftens ressurser. Dette:

Reduserer risikoen for datalekkasjer og uautoriserte tilganger.

Sikrer at kun enheter med nødvendige sikkerhetstiltak kan logge inn.

Hjelper med å overholde compliance-krav og regulatoriske standarder.

Kort sagt: Det gir bedre sikkerhet og kontroll over hvem og hva som får tilgang.

## Korleis
#### Land kvitelisting (Berre VPN)
Logg inn i entra (https://entra.microsoft.com) > Security > Conditiona access > Policies > New policy

* Navn: Force compliant device
* Users: 
  
  * Include: All users

  * Exclude: Users and groups
      
    * Select excluded users and groups: Breakglass gruppe
    
* Target resource
  
  * Include: All resources (formerly 'All cloud apps')

* Network
   
  * Include: Any network or location
  * Exclude: Selected networks and locations
    
    * Select: Norge

* Grant:

    * Grant Access
    * Require device to be marked as compliant

* Enable policy: On