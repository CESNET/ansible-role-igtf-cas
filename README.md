igtf_cas
=========

This role installs the **IGTF** (Interoperable Global Trust Federation) **CAs** (Certification Authorities)
certificates into the directory /etc/grid-security/certificates by installing 
the Debian package ca-policy-egi-core.

I also installs the Debian package fetch-crl, which periodically fetches their CRLs (Certificate Revocation Lists).
Depending on fetch-crl version, it installs a hook or a cron job that restarts Apache after each fetch. 


Role Variables
--------------

* igtf_cas_install_terena_ssl - installs the "TERENA SSL CA 3" and "TERENA SSL High Assurance CA 3" CAs for web servers to be accepted as client CAs, default is False

Dependencies
------------

No dependencies are used.

Example Playbook
----------------


    - hosts: servers
      vars: 
        igtf_cas_install_terena_ssl: True
      roles:
         - cesnet.igtf_cas

License
-------

Apache

Author Information
------------------

Martin Kuba <makub@cesnet.cz>, CESNET
