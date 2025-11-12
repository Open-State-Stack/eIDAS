# Certificate Profiles Summary

## Qualified Electronic Signature (QES)
- Key Usage: digitalSignature, nonRepudiation (critical)
- Subject DN: C=GR, CN=Full Name, GN=Given Name, SN=Surname, serialNumber=National ID
- qcStatements: QcCompliance, QcType=esign, QcSSCD (if QSCD)
- CRL Distribution Points: http://ca.demo-trust.eu/qes/crl
- OCSP: http://ocsp.demo-trust.eu/qes

## Qualified Electronic Seal (QSeal)
- Key Usage: digitalSignature, nonRepudiation (critical)
- Subject DN: C=GR, O=Organization Name, organizationIdentifier=VAT+GEMI, CN=Corporate Seal
- qcStatements: QcCompliance, QcType=eseal
- Subject Alternative Name: registeredName
- CRL: http://ca.demo-trust.eu/qseal/crl
- OCSP: http://ocsp.demo-trust.eu/qseal

## Qualified Website Authentication Certificate (QWAC)
- Key Usage: digitalSignature, keyEncipherment (critical)
- Extended Key Usage: serverAuth, clientAuth
- Subject DN: C=GR, O=Organization Name, CN=FQDN
- Subject Alternative Name: dNSName entries for each FQDN
- qcStatements: QcCompliance, QcType=web
- Authority Information Access: OCSP + issuer certificate URL

## Qualified Time-Stamp (QTS)
- TSA Policy OID: 0.4.0.2023.1.1
- Hash Algorithms: SHA-256, SHA-384, SHA-512
- Accuracy: 1 second
- Signing Certificate: dedicated TSA signing certificate stored in HSM
- Distribution: RFC 3161 endpoint https://tsa.demo-trust.eu
