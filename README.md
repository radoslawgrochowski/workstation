# workstation

My workstation initialization scripts, based on ansible playbook
and targeted at Ubuntu 20.04 LTS. 

## run

```shell
$ sudo apt-get install -y ansible git sudo
$ git -C ~/Projects/workstation pull || git clone https://github.com/radoslawgrochowski/workstation ~/Projects/workstation
$ sudo ansible-playbook ~/Projects/workstation/playbook.yml
````

## testing

### using docker
```sh
$ docker build . -t workstation && docker run --rm -it workstation
```

## inspiration 
* https://github.com/ThePrimeagen/ansible
