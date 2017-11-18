FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nfs-common
RUN apt-get update && apt-get install -y iputils-ping

RUN mkdir -p /var/mount/share
RUN mkdir -p /var/mount/destination
COPY .ssh /root/.ssh
RUN chown -R root /root/.ssh && chmod -R 600 /root/.ssh
CMD /script.sh