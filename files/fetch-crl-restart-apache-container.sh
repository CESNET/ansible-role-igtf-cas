#!/bin/bash
date --rfc-3339=seconds >>/var/log/fetch-crl-apache.log
docker restart perun_apache >>/var/log/fetch-crl-apache.log 2>&1
