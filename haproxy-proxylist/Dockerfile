FROM haproxy:latest

ADD proxy-list.sh /proxy-list.sh

ENTRYPOINT ["/proxy-list.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
