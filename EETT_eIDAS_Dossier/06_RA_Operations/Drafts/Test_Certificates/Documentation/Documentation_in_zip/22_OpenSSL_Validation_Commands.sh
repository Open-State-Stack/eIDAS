#!/usr/bin/env bash
set -euo pipefail
ROOT="CA_Certificates/1_Root_CA.pem"
openssl verify -CAfile "$ROOT" CA_Certificates/2_Issuing_CA_QES_Natural.pem
openssl verify -CAfile "$ROOT" CA_Certificates/3_Issuing_CA_QES_Legal.pem
openssl verify -CAfile "$ROOT" CA_Certificates/4_Issuing_CA_QSeal.pem
openssl verify -CAfile "$ROOT" CA_Certificates/5_Issuing_CA_QTS.pem
openssl verify -CAfile "$ROOT" CA_Certificates/6_Issuing_CA_QWAC.pem
openssl verify -CAfile CA_Certificates/2_Issuing_CA_QES_Natural.pem End_Entity_Certificates/7_QES_Natural_Person_Sample.pem
openssl verify -CAfile CA_Certificates/3_Issuing_CA_QES_Legal.pem End_Entity_Certificates/8_QES_Legal_Person_Sample.pem
openssl verify -CAfile CA_Certificates/4_Issuing_CA_QSeal.pem End_Entity_Certificates/9_QSeal_Sample.pem
openssl verify -CAfile CA_Certificates/5_Issuing_CA_QTS.pem End_Entity_Certificates/10_QTS_Certificate_Sample.pem
openssl verify -CAfile CA_Certificates/6_Issuing_CA_QWAC.pem End_Entity_Certificates/11_QWAC_Sample.pem
openssl verify -CAfile CA_Certificates/2_Issuing_CA_QES_Natural.pem End_Entity_Certificates/12_OCSP_Responder.pem
openssl crl -in Revocation_Samples/16_Sample_CRL_Empty.pem -text -noout
openssl crl -in Revocation_Samples/17_Sample_CRL_WithRevocations.pem -text -noout
for resp in Revocation_Samples/13_Sample_OCSP_Response_Good.der Revocation_Samples/14_Sample_OCSP_Response_Revoked.der Revocation_Samples/15_Sample_OCSP_Response_Unknown.der; do
  openssl ocsp -respin "$resp" -text -noverify
done
openssl ts -reply -in Timestamp_Samples/18_TSA_Token_Sample.tsr -text
