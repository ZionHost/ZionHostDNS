#!/bin/bash

set="ZionHostDNS/settings.py.dist"

sed "s|i.am.allowed.host|172.17.0.1|g" -i $set
