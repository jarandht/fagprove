# Begrene type sikkerheitsnøkkel slutbrukarar kan registrere

## Kvifor?

Bregrense type påloggigsmetodar slik at private eller uviste påloggingsmetodar ikkje blir brukt. Dette for å sikre at det altid er den tryggaste påloggings metoden som nyttast og berre den.

## Korlies

### Husk

Sett fido på administratorar og breakglass kontoar på førehand


### Finne YubiKey AAGUID / AA Guid

**Via yubico**
* http://yubico.com/genuine/
* https://support.yubico.com/hc/en-us/articles/360016648959-YubiKey-hardware-FIDO2-AAGUIDs

**Via entra** (Brukar må ha registrert fido)
* Entra > Users > "Brukar" > Authentication methods > "fido" > Details

**Via my account**
* https://mysignins.microsoft.com/security-info > "fido" > Details

### Settings

Entra > Security > Manage > Authentication methods > Policies

### Passkey (FIDO2)

Allow self-service set up: Yes

Enable: yes

Target: All users

Enforce key restrictions: Yes

Restrict specific keys: Yes

Add AAGUI

    - 2fc0579f-8113-47ea-b116-bb5a8db9202a

Save


### Temporary Access Pass

Enable: Yes

Minimum lifetime: 1

Maximum lifetime: 2

Default lifetime: 1

Length (characters): 20

Require one-time use: no

Save


### Alle andre

Dissable