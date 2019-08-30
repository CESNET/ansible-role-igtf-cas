igtf_cas
=========

This role installs the **IGTF** (Interoperable Global Trust Federation) **CAs** (Certification Authorities)
certificates into the directory /etc/grid-security/certificates by installing 
the Debian package ca-policy-egi-core.

I also installs the Debian package fetch-crl, which periodically fetches their CRLs (Certificate Revocation Lists).
Depending on fetch-crl version, it installs a hook or a cron job that restarts Apache after each fetch. 


Role Variables
--------------

No variables are used.

Dependencies
------------

No dependencies are used.

Example Playbook
----------------


    - hosts: servers
      roles:
         - cesnet.igtf_cas

License
-------

Apache

Author Information
------------------

Martin Kuba <makub@cesnet.cz>, CESNET
