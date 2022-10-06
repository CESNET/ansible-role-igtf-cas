#!/bin/bash
date --rfc-3339=seconds >>/var/log/fetch-crl-apache.log
systemctl restart apache2 >>/var/log/fetch-crl-apache.log 2>&1
