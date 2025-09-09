# Force Phishing-resistant MFA

## Kvifor 
Å bruke Force Phishing-resistant MFA (for eksempel FIDO2-nøkler eller Windows Hello for Business) betyr at brukerne må autentisere seg med metoder som er mye vanskeligere å kompromittere via phishing-angrep. Dette:

Gir sterkere beskyttelse mot konto-tyveri.

Reduserer risikoen for at angripere får tilgang selv om de kjenner passordet.

Øker sikkerheten betraktelig sammenlignet med tradisjonelle MFA-metoder som SMS eller app-baserte koder.

Kort sagt: Det gir sterk, phishing-sikker flerfaktorautentisering for å beskytte brukeridentiteter.

## Korleis
Logg inn i entra (https://entra.microsoft.com) > Security > Conditiona access > Policies > New policy

* Navn: Force phising resistan MFA
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
    * Require authentication strength
        
        * Phishing resistant mfa 
    
* Enable policy: On