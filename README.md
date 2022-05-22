# workstation

My workstation initialization scripts, based on ansible playbook
and targeted at Ubuntu 20.04 LTS. 

## run

```shell
$ sudo apt-get install -y ansible git sudo
$ git -C ~/Projects/workstation pull || git clone https://github.com/radoslawgrochowski/workstation ~/Projects/workstation
$ make
````

## testing

### using docker
```sh
make test
```

## inspiration 
* https://github.com/ThePrimeagen/ansible
