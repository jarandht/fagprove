## SSL Decryptin via SSL Proxy

Device > Certificate management > Certificates > Generate

* Certificate Type: Local
* Certificate Name: TrustCA
* Common Name: TrustCA
* Certificate Authority: Yes
* Algorithm: RSA
* Number of Bits: 4096
* Digest: sha256
* Expiration (days): 365

Objects > Decryption Decryption Profile > Add 

SSL Decryption > SSL Forward Proxy

* Block sessions with expired certificates: Yes
* Block sessions with untrusted issuers: Yes
* Block sessions with unknown certificate status: Yes
* Block sessions on certificate status check timeout: Yes
* Restrict certificate extensions: No
* Append certificate's CN value to SAN extension: Yes
* Block sessions with unsupported versions: Yes
* Block sessions with unsupported cipher suites: Yes
* Block sessions with client authentication: Yes
* Block sessions if resources not available: no
* Block downgrade on no resource: no
* Strip ALPN: no

SSL Decryption > SSL Protocol Settings

* Min Version: TLSv1.2
* Max Version: Max 

Policies > Decryption > Add

* Source tilpassa utrulling av cert
* Destination: Any Any Any
* Service: Any

Options:

* Action: Decrypt
* Type: SSL Forward Proxy
* Decryption Profile: Tidlegare oppretta