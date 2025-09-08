# Print

## Info

I løysinga er det valgt å bruke Azure universal print, der sråt det at konica minolta i3350 skrivaren skal vere "navtivly supported" dette viser seg å ikkje vere heit sant, då det treng litt meir arbeid en ein forventar frå "native support". I tilleg fungerer ikkje løysinga frå konica minolta som dei sjølve legg framm.

I tilleg til dette var det svært utfordrane å finne noko dokumetasjon på denne løysinga.

Alternativ til å nytte konica si ikkjefungerande løysing er å gå til anskaffing av andre printarar som støttar dette betre. Eventuelt nytte Azure universal print conector. 

Her kan det godt hende at ein må ta kontakt med konica direkte fro å få ein spesifik printer driver eller programmvare.


## Kva som er gjort

### På printer
Logg inn på konica minolta marketplace for å skaffe programmvare til printer: https://no.konicaminoltamarketplace.com/

Søkt opp "Connector for Universal Print" og kjøpt.

Etter dette må ein logge på printeren sin web-gui eller på skermen > Sør "Marketplace" og enable

Etter dette er det ein "marketplace" app på hovedmeny skjermen. Der loggar ein inn med marketplace konto.

Etter dette skulle "Connector for Universal Print" dukka opp og ein skull ha kunna innstalert applikasjonen og vidare kopla den til azure men applikasjonen dukker ikkje opp.

### I azure print managemnt
Logg inn i universal print (https://portal.azure.com/#view/Universal_Print) > Printers > "Printer" > Share printer
* Printer 1etg Rådhus
* Allow access to everyone in my organization: True

### Legge til printer i intune**
Logg inn i intune (https://intune.microsoft.com) > Devices > Winodws > Configuration > New policy
* Platform: Winodws 10.and later
* Porifle types: Settings catalog
* Name: Printer
* Configuration settings
    * 

## Resursar

* [Dokumentasjon frå konica](../../../Resursar/Connector%20for%20Universal%20Print%204343-PS723-14L_October%202024.pdf)
* [Oversikt støtte printerar (Azure)](https://learn.microsoft.com/en-us/universal-print/fundamentals/universal-print-printer-list)