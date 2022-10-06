#!/bin/bash
CAFILE=/etc/grid-security/accepted_cas.pem
rm -f $CAFILE
cd /etc/grid-security/certificates/ || exit 1
for i in *.pem
do
  if [[ $i != 'USERTrustRSACertificationAuthority.pem' && $i != 'USERTrustECCCertificationAuthority.pem' && $i != 'CESNET-CA-Root.pem' ]]
  then
    openssl x509 -noout -nameopt compat -subject -issuer -dates -in $i | sed -e 's/^/# /' >>$CAFILE
    cat $i >>$CAFILE
  fi
done
