#!/bin/bash

# generate self signed key for dshackle signed response
if [ ! -f "private-key.pem" ]; then
openssl ecparam -name prime256v1 -genkey -noout -out private-key.pem
fi
if [ ! -f "private-key-test.pem" ]; then
openssl pkcs8 -topk8 -inform PEM -outform PEM -in private-key.pem -out private-key-test.pem -nocrypt
fi
if [ ! -f "pubkey.pem" ]; then
openssl ec -in private-key-test.pem -pubout -out pubkey.pem
fi

# generate self signed cert for dshackle
if [ ! -f "my.key" ]; then
openssl req -new -newkey ec -pkeyopt ec_paramgen_curve:prime256v1 -nodes -x509 -subj "/C=DE/ST=Berlin/L=Berlin" -keyout my.key -out my.crt
fi
