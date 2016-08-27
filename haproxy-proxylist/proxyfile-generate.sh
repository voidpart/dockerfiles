#!/bin/bash

HAPROXY_CONFIG="/usr/local/etc/haproxy/haproxy.cfg"
HAPROXY_PIDFILE="/run/haproxy.pid"

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

if [ -n "$PROXY_FILE_URL" ]
then
  PROXY_FILE=/tmp/proxyfile.txt
  curl $PROXY_FILE_URL > $PROXY_FILE
fi

num=0
while read i
do
  let "num += 1"
  echo "    server app${num} ${i}" >>$HAPROXY_CONFIG
done <$PROXY_FILE

if [ -f $HAPROXY_PIDFILE ]
then
  kill -s SIGHUP 1
fi
