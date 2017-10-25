FROM base/devel:latest

RUN pacman --noconfirm -Sy distcc

EXPOSE 3632
CMD /usr/bin/distccd --no-detach --daemon --allow 0.0.0.0/0
