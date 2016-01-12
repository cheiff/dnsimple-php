#!/bin/bash

function query {
  echo "Querying $2"
  dig +short $1 $2
}
query $1 @ns1.dnsimple.com
query $1 @ns2.dnsimple.com
query $1 @ns3.dnsimple.com
query $1 @ns4.dnsimple.com

echo "Querying google"
dig +short $1 8.8.8.8
echo "Querying google secondary"
dig +short $1 8.8.4.4

echo "Normal query"
dig +short $1
echo "Host"
host $1
echo "Host -a"
host -a $1
