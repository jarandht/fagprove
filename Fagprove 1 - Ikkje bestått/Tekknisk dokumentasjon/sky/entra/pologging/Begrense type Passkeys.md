## Kvifor?

Bregrense type påloggigsmetodar slik at private eller uviste påloggingsmetodar blir brukt.


## Husk

Sett fido på administratorar og breakglass kontoar før


## Finne YubiKey AAGUID

http://yubico.com/genuine/

https://support.yubico.com/hc/en-us/articles/360016648959-YubiKey-hardware-FIDO2-AAGUIDs


## Settings

Entra > Authentication methods > Policies

## Passkey (FIDO2)

Allow self-service set up: Yes

Enable: yes

Target: All users

Enforce key restrictions: Yes

Restrict specific keys: Yes

Add AAGUI

    - 2fc0579f-8113-47ea-b116-bb5a8db9202a

Save


## Temporary Access Pass

Enable: Yes

Minimum lifetime: 1

Maximum lifetime: 2

Default lifetime: 1

Length (characters): 20

Require one-time use: Yes

Save


## Alle andre

Dissable 