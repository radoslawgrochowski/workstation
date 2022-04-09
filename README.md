# workstation

My workstation initialization scripts, based on ansible playbook
and targeted at Ubuntu 20.04 LTS. 

## run

```shell
$ sudo apt-get install -y ansible git
$ git -C ~/Projects/workstation pull || git clone https://github.com/radoslawgrochowski/workstation ~/Projects/workstation
$ ansible-playbook ~/Projects/workstation/playbook.yml
````

## testing

### using docker
```sh
$ docker build . -t workstation && docker run --rm -it workstation bash
```

## inspiration 
* https://github.com/ThePrimeagen/ansible