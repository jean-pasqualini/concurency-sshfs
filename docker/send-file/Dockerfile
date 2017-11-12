FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nfs-common
RUN apt-get update && apt-get install -y iputils-ping
RUN apt-get update && apt-get install -y uuid-runtime
RUN mkdir -p /var/mount/share
COPY .ssh /root/.ssh
RUN chown -R root /root/.ssh && chmod -R 600 /root/.ssh
CMD /script.sh