FROM ubuntu:focal AS base
RUN apt-get update
RUN apt-get install -y ansible sudo git make
RUN addgroup --gid 1000 radoslawgrochowski
RUN adduser --gecos radoslawgrochowski --uid 1000 --gid 1000 --disabled-password radoslawgrochowski
RUN echo '%radoslawgrochowski ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER radoslawgrochowski
WORKDIR /home/radoslawgrochowski

FROM base
COPY . .
CMD ["sh", "-c", "sudo ansible-playbook $TAGS playbook.yml"]
