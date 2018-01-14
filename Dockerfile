FROM qnib/dplain-init

RUN apt-get update \
 && apt-get install -y vdradmin-am
COPY etc/vdradmind.conf /etc/vdradmin-am/
CMD ["vdradmind", "--nofork", "-l", "7", "-d", "/etc/vdradmin-am/"]
