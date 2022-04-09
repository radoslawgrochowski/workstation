FROM ubuntu:focal AS base
RUN apt-get update
RUN apt-get install -y ansible

FROM base
COPY . .
CMD ["sh", "-c", "ansible-playbook playbook.yml"]