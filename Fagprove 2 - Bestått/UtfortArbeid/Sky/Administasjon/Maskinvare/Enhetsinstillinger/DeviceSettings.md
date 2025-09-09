# Generele enhetsinstillingar

## Kvifor 
* Kontroll over hvem som kan koble til eller registrere enheter sikrer at bare autoriserte brukere får tilgang.
* Krav om multifaktorautentisering (MFA) øker sikkerheten ved å redusere risikoen for at uvedkommende får tilgang via stjålne passord.
* Begrense antall enheter per bruker hindrer misbruk og gir bedre oversikt og kontroll.
* LAPS (Local Administrator Password Solution) sikrer at lokale administratorpassord på enheter håndteres trygt og unikt for hver enhet.
* Begrense brukertilgang til BitLocker-nøkler beskytter krypterte data ved å forhindre at brukere selv kan hente ut gjenopprettingsnøkler, noe som reduserer risikoen for datalekkasjer.

Tillater at brukere kan synkronisere innstillinger og app-data mellom alle sine enheter, noe som gir en mer sømløs og konsistent brukeropplevelse. Det gjør det enklere å jobbe på tvers av flere enheter uten å måtte konfigurere alt på nytt hver gang.

## Korleis

### Device settings
Logg inn på entra admin center (https://entra.microsoft.com) > Devices > Device settings
* Users may join devices to Microsoft Entra: None
* Users may register their devices with Microsoft Entra: All
* Require Multifactor Authentication to register or join devices with Microsoft Entra: Yes
* Maximum number of devices per user: 10
* Global administrator role is added as local administrator on the device during Microsoft Entra join (Preview): No
* Registering user is added as local administrator on the device during Microsoft Entra join (Preview): None
* Enable Microsoft Entra Local Administrator Password Solution (LAPS): Yes
* Restrict users from recovering the BitLocker key(s) for their owned devices: Yes

### Enterprice state roaming
Logg inn på entra admin center (https://entra.microsoft.com) > Devices > Enterprice state roaming

Users may sync settings and app data across devices: All