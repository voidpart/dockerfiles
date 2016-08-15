#!/bin/bash

HAPROXY_CONFIG="/usr/local/etc/haproxy/haproxy.cfg"

cat >$HAPROXY_CONFIG <<TXT 
global
    maxconn 2000
    # log /dev/stdout local0 info

defaults
    log     global
    mode    tcp
    option tcplog
    option  dontlognull
    option redispatch

    retries 3
    timeout connect  5000
    timeout client  10000
    timeout server  10000

listen proxy
    bind 0.0.0.0:8118
    use_backend proxies

backend proxies
    balance roundrobin
TXT

num=0
for i in `cat $PROXY_FILE`
do
  num=$num+1
  cat "    server app${num} ${i}" >> $HAPROXY_CONFIG
done

exec /docker-entrypoint.sh $@
