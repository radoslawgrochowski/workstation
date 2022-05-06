FROM archlinux:base AS base
LABEL maintainer="radoslawgrochowski <rg@fard.pl>"

ENV container="docker"
ENV TZ=Europe/Warsaw
RUN pacman -Syu --noconfirm 
RUN pacman -S --noconfirm ansible sudo git make 

RUN groupadd --gid 1000 radoslawgrochowski
RUN useradd -m --uid 1000 --gid 1000 radoslawgrochowski
RUN echo '%radoslawgrochowski ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER radoslawgrochowski
WORKDIR /home/radoslawgrochowski

COPY requirements.yml requirements.yml
RUN sudo ansible-galaxy collection install -r requirements.yml

FROM base
COPY . .
CMD ["sh", "-c", "sudo ansible-playbook $TAGS playbook.yml"]
