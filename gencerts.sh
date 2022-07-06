#!/bin/bash
openssl genrsa 2048 > openldapCA.pem
openssl req -new -x509 -nodes -days 365000 \
               -key openldapCA.pem \
               -out openldapCA.crt
openssl req -newkey rsa:2048 -nodes -days 365000 \
               -keyout server-key.pem \
               -out server-req.pem
openssl x509 -req -days 365000 -set_serial 01 \
               -in server-req.pem \
               -out server-cert.pem \
               -CA openldapCA.crt \
               -CAkey openldapCA.pem
