#### Innstalere Vm

Blir oppretta i proxmox via script:

    https://github.com/jarandht/scripts/blob/main/bash/pve-ubuntu-cloud-template.sh

Det blir skudd på følgane innstilingar
* Qemu guest agent: yes

#### Installere serfikat for SSL decryption/Proxy (Linux)

    sudo nano /usr/local/share/ca-certificates/palo.crt
    sudo update-ca-certificates

    -----BEGIN CERTIFICATE-----
    MIIE1TCCAr2gAwIBAgIUFNYpuHCyhK0Rg4esl/+JgUbDAUgwDQYJKoZIhvcNAQEL
    BQAwFTETMBEGA1UEAwwKU1NMUHJveHlDQTAeFw0yNTA5MDMxMDU5MTJaFw0yNjA5
    MDMxMDU5MTJaMBUxEzARBgNVBAMMClNTTFByb3h5Q0EwggIiMA0GCSqGSIb3DQEB
    AQUAA4ICDwAwggIKAoICAQDcLBnm5SaVtCE61Zo0Otz0bH77bIAR6pAszbrq0TuP
    13WxyxX78w8xi3AE9PPAhTm71jXU+rCChFpy2mk5JoRyz5k2icNDAQq4oqgIQgEo
    QCeLBGDpm8yCJ7Wmm768uLgxtSwPZmmhEJYGnJFOK9J53MfSI7ia2K0ajlQksV/m
    Cp2sDZLHfn9K5+j3HN5+HgkUUUvEcLc9dyljk+N7yS7XRS861oiGula+oto8pzsA
    9viwLHxNq4iOJwCxuXn6qINtD83BiE4FtA9J1113pM4mhkpoWRn+YuiME3a7snmW
    VCfF6LGcZfEHdhrber1BAOUjeKgnb1Zidyndyt9q0ev4hzYdnlCA+CITUl0yhoEu
    RoNcBUue0bdrbxgo7hxTr7hiSKhMYOlrbFFOVRs3qJm5jSVGXKh+3Qw4BOS4AGCm
    17Pqnkz5jthuB+2rAH6qbcYm582yA/4u2/AmkldRpzwKp7AR90ogMnczxOJVz1is
    iFVtIT6kHt+hCpPpRX8a05Oiy9B3gxIp/o62FnWTaHfGy2C8nRkVR9HC8+n/dUPF
    f50IJJ93eN27YuSjzL1VSR+eDGzhNXSjquQ1wcnIoFdpLRDTzYxERMOdJSmvajzc
    A2xO8cKVTWA+mxRaiIP4YdnEcGloHTIFpBF+LAwBF2+eFhOvqVMXRzP8FKNP++fa
    9QIDAQABox0wGzAMBgNVHRMEBTADAQH/MAsGA1UdDwQEAwICBDANBgkqhkiG9w0B
    AQsFAAOCAgEAvn9QKLAUKlIXMx6kp9tV5pAgJ7/KM+GOh/t26gEucF7xWaZ/aUrP
    jQcRpBYt3v70cFjFbsl8vX7HNolH6UjmjpDwOX86ZPs6y+KazWeu1XOS4CclLWU2
    JlIEsaHwM8OPEhq56GFk2EQ3b+8jxKHVPUqcjyxtILQQ7V9cABxnNuWYvqIUZJ2w
    Ok8zKYgHGeMtMpGnIdbzJcVqvOiC/t48Jbs92va9+e0JjLWAZWOCwSxUYi/JPKru
    4XXjtZDgMtJ2dD+RifbhEoT22P4iv+Vmt+1ITqKlC04cSXE//+jyX3EDZLzRVtvt
    N5rYae9stLVZMFjSLcj6hM13HXOcZxo6MZeMKYvBk9MMlNgclz1ACVGOobgmAnb8
    5UAhsN6Ngyy+JO3ERELTxCB+eJhM1WtM0P5960yVPl6y1CtjaPljlCiHSZteqlF1
    D5sK/ZC/bpSam+Sc4m/x8eIq61nsuUjml+iFIgByzO19YCiG45bFMRlIOVD+9NvO
    rgRyCtAy9kObqCKeoaY6gooj3jHgEhKuD3huXA/tKydIat+aybYESg/qC2LJLXj4
    1WVV0UJYmFcSFbanS7Q1hm1zeht1jqQJVG5ia3gwjh4v6/c/FBjS/X0XM2qVHbMq
    BpW3pC1hAOO9kAa9QQwtP74EPzVFnnmcFRwrUicy1g0Ppnn2bb6fHyg=
    -----END CERTIFICATE-----


#### Konfigurere automatisk oppdatering:

Blir konfigurert via script:

    curl https://github.com/jarandht/scripts/blob/main/bash/auto-updates.sh

#### Kjøyrt på alle

sudo timedatectl set-timezone Europe/Oslo
sudo apt install qemu-guest-agent